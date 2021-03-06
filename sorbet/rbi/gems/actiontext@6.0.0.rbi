# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   tapioca generate

# typed: ignore

module ActionText
  extend(::ActiveSupport::Autoload)

  def self.railtie_helpers_paths; end
  def self.railtie_namespace; end
  def self.railtie_routes_url_helpers(include_path_helpers = _); end
  def self.table_name_prefix; end
  def self.use_relative_model_naming?; end
end

module ActionText::Attachable
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(ClassMethods)

  def as_json(*_); end
  def attachable_content_type; end
  def attachable_filename; end
  def attachable_filesize; end
  def attachable_metadata; end
  def attachable_sgid; end
  def previewable_attachable?; end
  def to_rich_text_attributes(attributes = _); end
  def to_trix_content_attachment_partial_path; end

  def self.from_attachable_sgid(sgid, options = _); end
  def self.from_node(node); end
end

module ActionText::Attachable::ClassMethods
  def from_attachable_sgid(sgid); end
end

ActionText::Attachable::LOCATOR_NAME = T.let(T.unsafe(nil), String)

module ActionText::Attachables
  extend(::ActiveSupport::Autoload)
end

class ActionText::Attachables::ContentAttachment
  include(::ActiveModel::Model)
  include(::ActiveModel::AttributeAssignment)
  include(::ActiveModel::ForbiddenAttributesProtection)
  include(::ActiveModel::Conversion)
  include(::ActiveModel::Validations::HelperMethods)
  include(::ActiveSupport::Callbacks)
  include(::ActiveModel::Validations)
  extend(::ActiveModel::Conversion::ClassMethods)
  extend(::ActiveModel::Validations::HelperMethods)
  extend(::ActiveModel::Translation)
  extend(::ActiveSupport::DescendantsTracker)
  extend(::ActiveSupport::Callbacks::ClassMethods)
  extend(::ActiveModel::Callbacks)
  extend(::ActiveModel::Naming)
  extend(::ActiveModel::Validations::ClassMethods)

  def __callbacks; end
  def __callbacks?; end
  def _run_validate_callbacks(&block); end
  def _validate_callbacks; end
  def _validators; end
  def _validators?; end
  def attachable_plain_text_representation(caption); end
  def model_name(*args, &block); end
  def name; end
  def name=(_); end
  def to_partial_path; end
  def to_trix_content_attachment_partial_path; end
  def validation_context; end

  private

  def validation_context=(_); end

  def self.__callbacks; end
  def self.__callbacks=(val); end
  def self.__callbacks?; end
  def self._validate_callbacks; end
  def self._validate_callbacks=(value); end
  def self._validators; end
  def self._validators=(val); end
  def self._validators?; end
  def self.from_node(node); end
end

module ActionText::Attachables::MissingAttachable
  extend(::ActiveModel::Naming)

  def model_name(*args, &block); end

  def self.to_partial_path; end
end

class ActionText::Attachables::RemoteImage
  extend(::ActiveModel::Naming)

  def initialize(attributes = _); end

  def attachable_plain_text_representation(caption); end
  def content_type; end
  def height; end
  def model_name(*args, &block); end
  def to_partial_path; end
  def url; end
  def width; end

  def self.from_node(node); end
end

class ActionText::Attachment
  include(::ActionText::Attachments::TrixConversion)
  include(::ActionText::Attachments::Minification)
  include(::ActionText::Attachments::Caching)
  extend(::ActionText::Attachments::TrixConversion::ClassMethods)
  extend(::ActionText::Attachments::Minification::ClassMethods)

  def initialize(node, attachable); end

  def attachable; end
  def caption; end
  def full_attributes; end
  def inspect; end
  def method_missing(method, *args, &block); end
  def node; end
  def to_html; end
  def to_param(*args, &block); end
  def to_plain_text; end
  def to_s; end
  def with_full_attributes; end

  private

  def attachable_attributes; end
  def node_attributes; end
  def respond_to_missing?(name, include_private = _); end
  def sgid_attributes; end

  def self.fragment_by_canonicalizing_attachments(content); end
  def self.from_attachable(attachable, attributes = _); end
  def self.from_attachables(attachables); end
  def self.from_attributes(attributes, attachable = _); end
  def self.from_node(node, attachable = _); end
end

ActionText::Attachment::ATTRIBUTES = T.let(T.unsafe(nil), Array)

ActionText::Attachment::SELECTOR = T.let(T.unsafe(nil), String)

ActionText::Attachment::TAG_NAME = T.let(T.unsafe(nil), String)

class ActionText::AttachmentGallery
  include(::ActiveModel::Model)
  include(::ActiveModel::AttributeAssignment)
  include(::ActiveModel::ForbiddenAttributesProtection)
  include(::ActiveModel::Conversion)
  include(::ActiveModel::Validations::HelperMethods)
  include(::ActiveSupport::Callbacks)
  include(::ActiveModel::Validations)
  extend(::ActiveModel::Conversion::ClassMethods)
  extend(::ActiveModel::Validations::HelperMethods)
  extend(::ActiveModel::Translation)
  extend(::ActiveSupport::DescendantsTracker)
  extend(::ActiveSupport::Callbacks::ClassMethods)
  extend(::ActiveModel::Callbacks)
  extend(::ActiveModel::Naming)
  extend(::ActiveModel::Validations::ClassMethods)

  def initialize(node); end

  def __callbacks; end
  def __callbacks?; end
  def _run_validate_callbacks(&block); end
  def _validate_callbacks; end
  def _validators; end
  def _validators?; end
  def attachments; end
  def inspect; end
  def model_name(*args, &block); end
  def node; end
  def size; end
  def validation_context; end

  private

  def validation_context=(_); end

  def self.__callbacks; end
  def self.__callbacks=(val); end
  def self.__callbacks?; end
  def self._validate_callbacks; end
  def self._validate_callbacks=(value); end
  def self._validators; end
  def self._validators=(val); end
  def self._validators?; end
  def self.find_attachment_gallery_nodes(content); end
  def self.fragment_by_canonicalizing_attachment_galleries(content); end
  def self.fragment_by_replacing_attachment_gallery_nodes(content); end
  def self.from_node(node); end
end

module ActionText::Attachments
  extend(::ActiveSupport::Autoload)
end

module ActionText::Attachments::Caching
  def cache_key(*args); end

  private

  def cache_digest; end
end

module ActionText::Attachments::Minification
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(ClassMethods)
end

module ActionText::Attachments::Minification::ClassMethods
  def fragment_by_minifying_attachments(content); end
end

module ActionText::Attachments::TrixConversion
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(ClassMethods)

  def to_trix_attachment(content = _); end

  private

  def trix_attachment_content; end
end

module ActionText::Attachments::TrixConversion::ClassMethods
  def fragment_by_converting_trix_attachments(content); end
  def from_trix_attachment(trix_attachment); end
end

module ActionText::Attribute
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(ClassMethods)
end

module ActionText::Attribute::ClassMethods
  def has_rich_text(name); end
end

class ActionText::Content
  include(::ActionText::Serialization)
  extend(::ActionText::Serialization::ClassMethods)

  def initialize(content = _, options = _); end

  def ==(other); end
  def append_attachables(attachables); end
  def as_json(*_); end
  def attachables; end
  def attachment_galleries; end
  def attachments; end
  def blank?(*args, &block); end
  def empty?(*args, &block); end
  def fragment; end
  def gallery_attachments; end
  def html_safe(*args, &block); end
  def inspect; end
  def links; end
  def present?(*args, &block); end
  def render_attachment_galleries(&block); end
  def render_attachments(**options, &block); end
  def renderer; end
  def renderer=(obj); end
  def to_html; end
  def to_plain_text; end
  def to_rendered_html_with_layout; end
  def to_s; end
  def to_trix_html; end

  private

  def attachment_for_node(node, with_full_attributes: _); end
  def attachment_gallery_for_node(node); end
  def attachment_gallery_nodes; end
  def attachment_nodes; end

  def self.fragment_by_canonicalizing_content(content); end
  def self.renderer; end
  def self.renderer=(obj); end
end

module ActionText::ContentHelper
  def allowed_attributes; end
  def allowed_attributes=(obj); end
  def allowed_tags; end
  def allowed_tags=(obj); end
  def render_action_text_attachments(content); end
  def render_action_text_content(content); end
  def sanitize_action_text_content(content); end
  def sanitizer; end
  def sanitizer=(obj); end
  def scrubber; end
  def scrubber=(obj); end

  def self.allowed_attributes; end
  def self.allowed_attributes=(obj); end
  def self.allowed_tags; end
  def self.allowed_tags=(obj); end
  def self.sanitizer; end
  def self.sanitizer=(obj); end
  def self.scrubber; end
  def self.scrubber=(obj); end
end

class ActionText::Engine < ::Rails::Engine
end

class ActionText::Fragment
  def initialize(source); end

  def find_all(selector); end
  def replace(selector); end
  def source; end
  def to_html; end
  def to_plain_text; end
  def to_s; end
  def update; end

  def self.from_html(html); end
  def self.wrap(fragment_or_html); end
end

module ActionText::HtmlConversion
  extend(::ActionText::HtmlConversion)

  def create_element(tag_name, attributes = _); end
  def fragment_for_html(html); end
  def node_to_html(node); end

  private

  def document; end
end

module ActionText::PlainTextConversion
  extend(::ActionText::PlainTextConversion)

  def node_to_plain_text(node); end

  private

  def bullet_for_li_node(node, index); end
  def list_node_name_for_li_node(node); end
  def plain_text_for_block(node, index = _); end
  def plain_text_for_blockquote_node(node, index); end
  def plain_text_for_br_node(node, index); end
  def plain_text_for_div_node(node, index); end
  def plain_text_for_figcaption_node(node, index); end
  def plain_text_for_h1_node(node, index = _); end
  def plain_text_for_li_node(node, index); end
  def plain_text_for_node(node, index = _); end
  def plain_text_for_node_children(node); end
  def plain_text_for_ol_node(node, index = _); end
  def plain_text_for_p_node(node, index = _); end
  def plain_text_for_text_node(node, index); end
  def plain_text_for_ul_node(node, index = _); end
  def plain_text_method_for_node(node); end
  def remove_trailing_newlines(text); end
end

class ActionText::RichText < ::ActiveRecord::Base
  def autosave_associated_records_for_record(*args); end
  def nil?(*args, &block); end
  def to_s(*args, &block); end

  def self.__callbacks; end
  def self._reflections; end
  def self._validators; end
  def self.attribute_type_decorations; end
  def self.defined_enums; end
end

module ActionText::Serialization
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(ClassMethods)

  def _dump(*_); end
end

module ActionText::Serialization::ClassMethods
  def _load(content); end
  def dump(content); end
  def load(content); end
end

module ActionText::TagHelper
  def rich_text_area_tag(name, value = _, options = _); end

  def self.id; end
  def self.id=(obj); end
end

class ActionText::TrixAttachment
  def initialize(node); end

  def attributes; end
  def node; end
  def to_html; end
  def to_s; end

  private

  def attachment_attributes; end
  def composed_attributes; end
  def read_json_attribute(name); end
  def read_json_object_attribute(name); end

  def self.from_attributes(attributes); end
end

ActionText::TrixAttachment::ATTRIBUTES = T.let(T.unsafe(nil), Array)

ActionText::TrixAttachment::ATTRIBUTE_TYPES = T.let(T.unsafe(nil), Hash)

ActionText::TrixAttachment::COMPOSED_ATTRIBUTES = T.let(T.unsafe(nil), Array)

ActionText::TrixAttachment::SELECTOR = T.let(T.unsafe(nil), String)

ActionText::TrixAttachment::TAG_NAME = T.let(T.unsafe(nil), String)

module ActionView::Helpers
  include(::ActionView::Helpers::RenderingHelper)
  include(::ActionView::Helpers::NumberHelper)
  include(::ActionView::Helpers::JavaScriptHelper)
  include(::ActionView::Helpers::FormOptionsHelper)
  include(::ActionView::Helpers::TextHelper)
  include(::ActionView::Helpers::DebugHelper)
  include(::ActionView::Helpers::TagHelper)
  include(::ActionView::Helpers::OutputSafetyHelper)
  include(::ActionView::Helpers::DateHelper)
  include(::ActionView::Helpers::CsrfHelper)
  include(::ActionView::Helpers::CspHelper)
  include(::ActionView::Helpers::ControllerHelper)
  include(::ActionView::Helpers::CaptureHelper)
  include(::ActionView::Helpers::SanitizeHelper)
  include(::ActionView::Helpers::CacheHelper)
  include(::ActionView::Helpers::AtomFeedHelper)
  include(::ActionView::Helpers::AssetUrlHelper)
  include(::ActionView::Helpers::ActiveModelHelper)
  include(::ActiveSupport::Benchmarkable)
  extend(::ActiveSupport::Concern)
  extend(::ActiveSupport::Autoload)

  def self.eager_load!; end
end

class ActionView::Helpers::FormBuilder
  include(::ActionView::ModelNaming)

  def initialize(object_name, object, template, options); end

  def button(value = _, options = _, &block); end
  def check_box(method, options = _, checked_value = _, unchecked_value = _); end
  def collection_check_boxes(method, collection, value_method, text_method, options = _, html_options = _, &block); end
  def collection_radio_buttons(method, collection, value_method, text_method, options = _, html_options = _, &block); end
  def collection_select(method, collection, value_method, text_method, options = _, html_options = _); end
  def color_field(method, options = _); end
  def date_field(method, options = _); end
  def date_select(method, options = _, html_options = _); end
  def datetime_field(method, options = _); end
  def datetime_local_field(method, options = _); end
  def datetime_select(method, options = _, html_options = _); end
  def email_field(method, options = _); end
  def emitted_hidden_id?; end
  def field_helpers; end
  def field_helpers=(val); end
  def field_helpers?; end
  def fields(scope = _, model: _, **options, &block); end
  def fields_for(record_name, record_object = _, fields_options = _, &block); end
  def file_field(method, options = _); end
  def grouped_collection_select(method, collection, group_method, group_label_method, option_key_method, option_value_method, options = _, html_options = _); end
  def hidden_field(method, options = _); end
  def index; end
  def label(method, text = _, options = _, &block); end
  def month_field(method, options = _); end
  def multipart; end
  def multipart=(multipart); end
  def multipart?; end
  def number_field(method, options = _); end
  def object; end
  def object=(_); end
  def object_name; end
  def object_name=(_); end
  def options; end
  def options=(_); end
  def password_field(method, options = _); end
  def phone_field(method, options = _); end
  def radio_button(method, tag_value, options = _); end
  def range_field(method, options = _); end
  def rich_text_area(method, options = _); end
  def search_field(method, options = _); end
  def select(method, choices = _, options = _, html_options = _, &block); end
  def submit(value = _, options = _); end
  def telephone_field(method, options = _); end
  def text_area(method, options = _); end
  def text_field(method, options = _); end
  def time_field(method, options = _); end
  def time_select(method, options = _, html_options = _); end
  def time_zone_select(method, priority_zones = _, options = _, html_options = _); end
  def to_model; end
  def to_partial_path; end
  def url_field(method, options = _); end
  def week_field(method, options = _); end

  private

  def convert_to_legacy_options(options); end
  def fields_for_nested_model(name, object, fields_options, block); end
  def fields_for_with_nested_attributes(association_name, association, options, block); end
  def nested_attributes_association?(association_name); end
  def nested_child_index(name); end
  def objectify_options(options); end
  def submit_default_value; end

  def self._to_partial_path; end
  def self.field_helpers; end
  def self.field_helpers=(val); end
  def self.field_helpers?; end
end

module ActionView::Helpers::FormHelper
  include(::ActionView::RecordIdentifier)
  include(::ActionView::ModelNaming)
  extend(::ActiveSupport::Concern)

  def check_box(object_name, method, options = _, checked_value = _, unchecked_value = _); end
  def color_field(object_name, method, options = _); end
  def date_field(object_name, method, options = _); end
  def datetime_field(object_name, method, options = _); end
  def datetime_local_field(object_name, method, options = _); end
  def default_form_builder; end
  def default_form_builder=(_); end
  def email_field(object_name, method, options = _); end
  def fields(scope = _, model: _, **options, &block); end
  def fields_for(record_name, record_object = _, options = _, &block); end
  def file_field(object_name, method, options = _); end
  def form_for(record, options = _, &block); end
  def form_with(model: _, scope: _, url: _, format: _, **options, &block); end
  def form_with_generates_ids; end
  def form_with_generates_ids=(obj); end
  def form_with_generates_remote_forms; end
  def form_with_generates_remote_forms=(obj); end
  def hidden_field(object_name, method, options = _); end
  def label(object_name, method, content_or_options = _, options = _, &block); end
  def month_field(object_name, method, options = _); end
  def number_field(object_name, method, options = _); end
  def password_field(object_name, method, options = _); end
  def phone_field(object_name, method, options = _); end
  def radio_button(object_name, method, tag_value, options = _); end
  def range_field(object_name, method, options = _); end
  def rich_text_area(object_name, method, options = _); end
  def search_field(object_name, method, options = _); end
  def telephone_field(object_name, method, options = _); end
  def text_area(object_name, method, options = _); end
  def text_field(object_name, method, options = _); end
  def time_field(object_name, method, options = _); end
  def url_field(object_name, method, options = _); end
  def week_field(object_name, method, options = _); end

  private

  def apply_form_for_options!(record, object, options); end
  def default_form_builder_class; end
  def html_options_for_form_with(url_for_options = _, model = _, html: _, local: _, skip_enforcing_utf8: _, **options); end
  def instantiate_builder(record_name, record_object, options); end

  def self.form_with_generates_ids; end
  def self.form_with_generates_ids=(obj); end
  def self.form_with_generates_remote_forms; end
  def self.form_with_generates_remote_forms=(obj); end
end

class ActionView::Helpers::Tags::ActionText < ::ActionView::Helpers::Tags::Base
  include(::ActionView::Helpers::Tags::Placeholderable)

  def dom_id(*args, &block); end
  def editable_value; end
  def render; end
end
