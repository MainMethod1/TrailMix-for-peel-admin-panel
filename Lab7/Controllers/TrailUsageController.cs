using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using Lab7.Models;

namespace Lab7.Controllers
{
    public class TrailUsageController : ApiController
    {
        private Lab7DBEntities1 db = new Lab7DBEntities1();
          public TrailUsageController() : base() {
            db.Configuration.LazyLoadingEnabled = false;
            db.Configuration.ProxyCreationEnabled = false;
        }

        // GET api/TrailUsage
        /// <summary>
        /// To get the total trail usage infirmation, use this method
        /// </summary>
        /// <returns></returns>
        public IQueryable<TrailUsage> GetTrailUsages()
        {
            return db.TrailUsages;
        }

        // GET api/TrailUsage/5
        /// <summary>
        /// Use this method to get information for one particular usage
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [ResponseType(typeof(TrailUsage))]
        public IHttpActionResult GetTrailUsage(int id)
        {
            TrailUsage trailusage = db.TrailUsages.Find(id);
            if (trailusage == null)
            {
                return NotFound();
            }

            return Ok(trailusage);
        }

        // PUT api/TrailUsage/5
        public IHttpActionResult PutTrailUsage(int id, TrailUsage trailusage)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != trailusage.Id)
            {
                return BadRequest();
            }

            db.Entry(trailusage).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TrailUsageExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST api/TrailUsage
        /// <summary>
        /// Use this method to add trail usage information
        /// </summary>
        /// <param name="trailusage"></param>
        /// <returns></returns>
        [ResponseType(typeof(TrailUsage))]
        public IHttpActionResult PostTrailUsage(TrailUsage trailusage)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.TrailUsages.Add(trailusage);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = trailusage.Id }, trailusage);
        }

        // DELETE api/TrailUsage/5
        /// <summary>
        /// Use this method to delete one perticular usage information
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [ResponseType(typeof(TrailUsage))]
        public IHttpActionResult DeleteTrailUsage(int id)
        {
            TrailUsage trailusage = db.TrailUsages.Find(id);
            if (trailusage == null)
            {
                return NotFound();
            }

            db.TrailUsages.Remove(trailusage);
            db.SaveChanges();

            return Ok(trailusage);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool TrailUsageExists(int id)
        {
            return db.TrailUsages.Count(e => e.Id == id) > 0;
        }
    }
}