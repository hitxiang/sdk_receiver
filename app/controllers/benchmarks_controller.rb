class BenchmarksController < ApplicationController
 
  def simple
    # example from http://json.org/example
    json = {
      glossary: {
        title: "example glossary",
        gloss_div: {
          title: "S",
          gloss_list: {
            gloss_entry: {
              id: "SGML",
              sort_as: "SGML",
              gloss_term: "Standard Generalized Markup Language",
              acronym: "SGML",
              abbrev: "ISO 8879:1986",
              gloss_def: {
                para: "A meta-markup language, used to create markup languages such as DocBook.",
                gloss_see_also: ["GML", "XML"]
              },
              gloss_see: "markup"
            }
          }
        }
      }
    }
 
    render json: json
  end

  ### cache the response for the index action
  # include ApiCache
  # def index
  #   json = cache_storage ["v1", "users"] do
  #     @users = User.all

  #     ActiveModel::Serializer.build_json(self, @users, {}).to_json
  #   end
  #   render json: json
  # end

end