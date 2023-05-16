using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public class Movies
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string summary { get; set; }
        public double ImdbScore { get; set; }
        public double score { get; set; }
        public string ImagePath { get; set; }
        public bool activity { get; set; }
        public string activitystring { get; set; }


    }
}
