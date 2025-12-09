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
        /// Difficulty level: easy, medium, hard
        /// Example: medium
        /// </summary>
        [JsonProperty("difficulty")]
        public string Difficulty { get; set; }

        /// <summary>
        /// Number of words to generate (1-50)
        /// Example: 5
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }
    }
}
