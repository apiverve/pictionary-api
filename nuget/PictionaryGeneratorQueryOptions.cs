using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.PictionaryGenerator
{
    /// <summary>
    /// Query options for the Pictionary Generator API
    /// </summary>
    public class PictionaryGeneratorQueryOptions
    {
        /// <summary>
        /// Difficulty level
        /// </summary>
        [JsonProperty("difficulty")]
        public string Difficulty { get; set; }

        /// <summary>
        /// Number of words to generate
        /// </summary>
        [JsonProperty("count")]
        public int? Count { get; set; }
    }
}
