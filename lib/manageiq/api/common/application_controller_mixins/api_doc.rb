module ManageIQ
  module API
    module Common
      module ApplicationControllerMixins
        module ApiDoc
          def self.included(other)
            other.extend(self::ClassMethods)
          end

          private

          def api_doc_definition
            self.class.send(:api_doc_definition)
          end

          module ClassMethods
            private

            def api_doc
              @api_doc ||= ::ManageIQ::API::Common::OpenApi::Docs.instance[api_version[1..-1].sub(/x/, ".")]
            end

            def api_doc_definition
              @api_doc_definition ||= api_doc.definitions[model.name]
            end

            def api_version
              @api_version ||= name.split("::")[1].downcase
            end
          end
        end
      end
    end
  end
end
