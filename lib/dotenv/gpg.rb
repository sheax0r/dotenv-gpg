require "dotenv/gpg/version"
require "English"

module Dotenv
  module Gpg
    def self.extensions
      [:file_handler]
    end

    class FileHandler
      class << self
        def file_types
          %w(.env.gpg)
        end

        def read(filename)
          decrypted = `gpg --batch --quiet --decrypt #{filename}`
          if $CHILD_STATUS.success?
            decrypted
          else
            fail Error, "Decrypting #{filename} failed"
          end
        end
      end
    end
  end
end
