module RailsAdminFeaturedContent
  class FeaturedContentController < ::ApplicationController
    def search_content
      # @content_builder = '[{"id":"Botaurus stellaris","label":"Great Bittern","value":"Great Bittern"},{"id":"Podiceps nigricollis","label":"Black-necked Grebe","value":"Black-necked Grebe"},{"id":"Nycticorax nycticorax","label":"Black-crowned Night Heron","value":"Black-crowned Night Heron"},{"id":"Netta rufina","label":"Red-crested Pochard","value":"Red-crested Pochard"},{"id":"Circus cyaneus","label":"Hen Harrier","value":"Hen Harrier"},{"id":"Circus pygargus","label":"Montagu`s Harrier","value":"Montagu`s Harrier"},{"id":"Tetrao tetrix","label":"Black Grouse","value":"Black Grouse"},{"id":"Perdix perdix","label":"Grey Partridge","value":"Grey Partridge"},{"id":"Porzana porzana","label":"Spotted Crake","value":"Spotted Crake"},{"id":"Crex crex","label":"Corncrake","value":"Corncrake"},{"id":"Grus grus","label":"Common Crane","value":"Common Crane"},{"id":"Recurvirostra avosetta","label":"Avocet","value":"Avocet"}]'
      @content_builder = ContentBuilder.all
      if @content_builder
        render json: @content_builder
      else
        render json: @content_builder.errors
      end
    end
  end
end
