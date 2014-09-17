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
    public class TrailAPIController : ApiController
    {
       
         private Lab7DBEntities1 db = new Lab7DBEntities1();
          //new constructor to disable lazy loading 
        public TrailAPIController() : base() {
            db.Configuration.LazyLoadingEnabled = false;
            db.Configuration.ProxyCreationEnabled = false;
        }
        // GET api/TrailAPI
        /// <summary>
        /// To get the information about all the trails use this method
        /// </summary>
        /// <returns></returns>
        public IQueryable<Trail> GetTrails()
        {
            return db.Trails;
        }

        // GET api/TrailAPI/5
        /// <summary>
        /// To get the information about one particular trail, use this method and pass the trailId of the trail that you're looking information for
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [ResponseType(typeof(Trail))]
        public IHttpActionResult GetTrail(int id)
        {
            Trail trail = db.Trails.Find(id);
            if (trail == null)
            {
                return NotFound();
            }

            return Ok(trail);
        }

        // PUT api/TrailAPI/5
        /// <summary>
        /// TO update the information of one particular trail
        /// </summary>
        /// <param name="id"></param>
        /// <param name="trail"></param>
        /// <returns></returns>
        public IHttpActionResult PutTrail(int id, Trail trail)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != trail.Id)
            {
                return BadRequest();
            }

            db.Entry(trail).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TrailExists(id))
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

        
        // POST api/TrailAPI
        /// <summary>
        /// To add a new trail to the database, use this method 
        /// </summary>
        /// <param name="trail"></param>
        /// <returns></returns>
        [ResponseType(typeof(Trail))]
        public IHttpActionResult PostTrail(Trail trail)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Trails.Add(trail);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = trail.Id }, trail);
        }

        // DELETE api/TrailAPI/5
        /// <summary>
        /// To delete a trail from database, use this method
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [ResponseType(typeof(Trail))]
        public IHttpActionResult DeleteTrail(int id)
        {
            Trail trail = db.Trails.Find(id);
            if (trail == null)
            {
                return NotFound();
            }

            db.Trails.Remove(trail);
            db.SaveChanges();

            return Ok(trail);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool TrailExists(int id)
        {
            return db.Trails.Count(e => e.Id == id) > 0;
        }
    }
}