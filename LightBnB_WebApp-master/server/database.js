const properties = require('./json/properties.json');
const users = require('./json/users.json');
const { Pool } = require('pg');
/// Users
const pool = new Pool({
  user: 'vagrant',
  password: 123,
  host: 'localhost',
  database: 'lightbnb'
});
/**
 * Get a single user from the database given their email.
 * @param {String} email The email of the user.
 * @return {Promise<{}>} A promise to the user.
 */
const getUserWithEmail = function(email) {
  // let user;
  // for (const userId in users) {
  //   user = users[userId];
  //   if (user.email.toLowerCase() === email.toLowerCase()) {
  //     break;
  //   } else {
  //     user = null;
  //   }
  // }
  // return Promise.resolve(user);
  return pool.query(`SELECT * FROM users
  WHERE email = $1`, [email])
  .then(res=>res.rows[0]);
}
exports.getUserWithEmail = getUserWithEmail;

/**
 * Get a single user from the database given their id.
 * @param {string} id The id of the user.
 * @return {Promise<{}>} A promise to the user.
 */
const getUserWithId = function(id) {
  // return Promise.resolve(users[id]);
  return pool.query(`SELECT * FROM users
  WHERE id = $1`, [id])
  .then(res=>res.rows[0]);
}
exports.getUserWithId = getUserWithId;


/**
 * Add a new user to the database.
 * @param {{name: string, password: string, email: string}} user
 * @return {Promise<{}>} A promise to the user.
 */
const addUser =  function(user) {
  // const userId = Object.keys(users).length + 1;
  // user.id = userId;
  // users[userId] = user;
  // return Promise.resolve(user);
  return pool.query(`INSERT INTO users (name, email, password) VALUES ($1, $2, $3)`, [user.name, user.email, user.password])
  .then(res=>res.rows[0]);
}
exports.addUser = addUser;

/// Reservations

/**
 * Get all reservations for a single user.
 * @param {string} guest_id The id of the user.
 * @return {Promise<[{}]>} A promise to the reservations.
 */
const getAllReservations = function(guest_id, limit = 10) {
  //return getAllProperties(null, 2);
  return pool.query(`SELECT properties.*, reservations.* 
  FROM reservations
  JOIN properties on reservations.property_id = properties.id
  WHERE guest_id = $1
  ORDER BY reservations.start_date
  LIMIT $2`, [guest_id, limit])
  .then(res=>res.rows);
}
exports.getAllReservations = getAllReservations;




/**
 * Get all properties.
 * @param {{}} options An object containing query options.
 * @param {*} limit The number of results to return.
 * @return {Promise<[{}]>}  A promise to the properties.
 */
const getAllProperties = function(options, limit = 10) {
  // const limitedProperties = {};
  // for (let i = 1; i <= limit; i++) {
  //   limitedProperties[i] = properties[i];
  // }
  // return Promise.resolve(limitedProperties);
  const queryParams = [];
  let queryString = `SELECT properties.*, AVG(property_reviews.rating) as average_rating
  FROM properties
  JOIN property_reviews ON properties.id = property_id;`;
  if (options.city){
  queryParams.push(`%${options.city}%`);
  queryString += `WHERE city LIKE $${queryParams.length}`;
  }

  if (options.owner_id){
  queryParams.push(`%${options.owner_id}%`);
  queryString += `WHERE owner_id LIKE $${queryParams.length}`;
  }

  queryParams.push(limit);
  queryString += `
  GROUP BY properties.id
  ORDER BY cost_per_night
  LIMIT $${queryParams.length};`;

  return pool.query(queryString, queryParams)
  .then(res=>res.rows);
}
exports.getAllProperties = getAllProperties;


/**
 * Add a property to the database
 * @param {{}} property An object containing all of the property details.
 * @return {Promise<{}>} A promise to the property.
 */
const addProperty = function(property) {
  const propertyId = Object.keys(properties).length + 1;
  property.id = propertyId;
  properties[propertyId] = property;
  return Promise.resolve(property);
}
exports.addProperty = addProperty;


// SELECT properties.*, avg(property_reviews.rating) as average_rating
// FROM properties
// JOIN property_reviews ON properties.id = property_id
// WHERE city LIKE `%oronto%`
// GROUP BY properties.id
// ORDER BY cost_per_night
// LIMIT 10;