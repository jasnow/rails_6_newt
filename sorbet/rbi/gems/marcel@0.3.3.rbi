# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   tapioca generate

# typed: true

module Marcel
end

class Marcel::MimeType
  def self.extend(type, extensions: _, parents: _, magic: _); end
  def self.for(pathname_or_io = _, name: _, extension: _, declared_type: _); end
end

Marcel::MimeType::BINARY = T.let(T.unsafe(nil), String)

Marcel::VERSION = T.let(T.unsafe(nil), String)
