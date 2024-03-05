module.exports = {
  client: {
    name: 'MamoClient',
    service: {
      name: 'GitHub',
      localSchemaFile: 'schema.json'
    },
    includes: ['*.graphql']
  }
};