using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public class DataFunctions
    {
        SqlConnection con;
        SqlCommand cmd;
        public DataFunctions()
        {
            con = new SqlConnection(Connectionstr.ConStr);
            cmd = con.CreateCommand();

        }
        #region MoviesFunction
        public List<Movies> ListMovies()
        {

            try
            {
                List<Movies> movieList = new List<Movies>();
                cmd.CommandText = "select Name, summary, ImdbScore,Score,ImagePath,activity,ID from Movies";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Movies m = new Movies();
                    m.Name = reader.GetString(0);
                    m.summary = reader.GetString(1);
                    m.ImdbScore = reader.GetDouble(2);
                    m.score = reader.GetDouble(3);
                    m.ImagePath = reader.GetString(4);
                    m.activity = reader.GetBoolean(5);
                    m.activitystring = reader.GetBoolean(5) ? "<label style='color:green'>Aktif</label>" : "<label style='color:red'>Pasif</label>";
                    m.ID = reader.GetInt32(6);
                    movieList.Add(m);
                }
                return movieList;
            }
            catch
            {
                return null;
            }
            finally
            {
                con.Close();
            }
        }
        public bool AddMovies(Movies m)
        {
            try
            {
                cmd.CommandText = "insert into Movies(Name,summary,ImdbScore,Score,ImagePath,activity) values (@name,@summary,@ImdbScore,@Score,@ImagePath,@activity)";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@name", m.Name);
                cmd.Parameters.AddWithValue("@summary", m.summary);
                cmd.Parameters.AddWithValue("@ImdbScore", m.ImdbScore);
                cmd.Parameters.AddWithValue("@Score", m.score);
                cmd.Parameters.AddWithValue("@ImagePath", m.ImagePath);
                cmd.Parameters.AddWithValue("@activity", m.activity);
                con.Open();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch
            {
                return false;
            }
            finally
            {
                con.Close();
            }
        }

        public bool DeleteMovies(int id)
        {
            try
            {
                cmd.CommandText = "delete Movies where ID=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch
            {
                return false;
            }
            finally
            {
                con.Close();
            }
        }

        public List<Movies> ListMoviesImdbTop5()
        {
            try
            {
                List<Movies> movieList = new List<Movies>();
                cmd.CommandText = "SELECT TOP 4 Name, summary, ImdbScore, score, ImagePath, activity, ID FROM Movies ORDER BY ImdbScore DESC;";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Movies m = new Movies();
                    m.Name = reader.GetString(0);
                    m.summary = reader.GetString(1);
                    m.ImdbScore = reader.GetDouble(2);
                    m.score = reader.GetDouble(3);
                    m.ImagePath = reader.GetString(4);
                    m.activity = reader.GetBoolean(5);
                    m.activitystring = reader.GetBoolean(5) ? "<label style='color:green'>Aktif</label>" : "<label style='color:red'>Pasif</label>";
                    m.ID = reader.GetInt32(6);
                    movieList.Add(m);
                }
                return movieList;
            }
            catch (Exception ex)
            {
                return null;
            }
            finally
            {
                con.Close();
            }
        }
        public List<Movies> ListMoviesNeIzlesemTop5()
        {
            try
            {
                List<Movies> movieList = new List<Movies>();
                cmd.CommandText = "SELECT TOP 4 Name, summary, ImdbScore, score, ImagePath, activity, ID FROM Movies ORDER BY Score DESC;";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Movies m = new Movies();
                    m.Name = reader.GetString(0);
                    m.summary = reader.GetString(1);
                    m.ImdbScore = reader.GetDouble(2);
                    m.score = reader.GetDouble(3);
                    m.ImagePath = reader.GetString(4);
                    m.activity = reader.GetBoolean(5);
                    m.activitystring = reader.GetBoolean(5) ? "<label style='color:green'>Aktif</label>" : "<label style='color:red'>Pasif</label>";
                    m.ID = reader.GetInt32(6);
                    movieList.Add(m);
                }
                return movieList;
            }
            catch (Exception ex)
            {
                return null;
            }
            finally
            {
                con.Close();
            }
        }

        #endregion
    }
}
