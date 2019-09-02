using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AzureDevOps.Models.Database.Builds.Builds;
using AzureDevOps.Models.Database.Core.Project;
using Microsoft.AspNetCore.Mvc;

namespace AzureDevOps.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ValuesController : ControllerBase
    {
        readonly AzureContext _dbContext;
        public ValuesController(AzureContext context) {
            _dbContext = context;
        }

        // GET api/values
        [HttpGet("generate-db-seed")]
        public ActionResult<List<BuildReason>> GenerateDBSeed()
        {
            return _dbContext.BuildReasons.ToList();
        }

        // GET api/values/5
        [HttpGet("{id}")]
        public ActionResult<string> Get(int id)
        {
            return "value";
        }

        // POST api/values
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/values/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/values/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
