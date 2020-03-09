module Types
  # All GraphQL queries start from a root type called Query
  class QueryType < Types::BaseObject

    # Links 
    field :all_links, [LinkType], null: false

    # this method is invoked, when `all_link` fields is being resolved
    def all_links
      Link.all
    end
  end
end
