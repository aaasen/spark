class Spark.Models.Idea extends Backbone.Model
  paramRoot: 'idea'

  defaults:
    name: null
    content: null

class Spark.Collections.IdeasCollection extends Backbone.Collection
  model: Spark.Models.Idea
  url: '/ideas'
