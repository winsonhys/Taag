const { buildClientSchema, printSchema } = require("graphql");
const path = require('path')
const fs = require("fs");

const introspectionSchemaResult = JSON.parse(fs.readFileSync(__dirname + "/schema.json"));
const graphqlSchemaObj = buildClientSchema(introspectionSchemaResult);
const sdlString = printSchema(graphqlSchemaObj);
fs.writeFileSync(path.dirname(__filename) + "/schema.gql", sdlString)