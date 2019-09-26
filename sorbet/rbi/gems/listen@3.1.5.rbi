# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   tapioca generate

# typed: true

module Listen
  def self.logger; end
  def self.logger=(logger); end
  def self.setup_default_logger_if_unset; end
  def self.stop; end
  def self.to(*args, &block); end
end

module Listen::Adapter
  def self.select(options = _); end
end

class Listen::Adapter::BSD < ::Listen::Adapter::Base

  private

  def _change(event_flags); end
  def _configure(directory, &callback); end
  def _event_path(event); end
  def _find(*paths, &block); end
  def _process_event(dir, event); end
  def _run; end
  def _watch_file(path, queue); end
  def _watch_for_new_file(event); end

  def self.usable?; end
end

Listen::Adapter::BSD::BUNDLER_DECLARE_GEM = T.let(T.unsafe(nil), String)

Listen::Adapter::BSD::DEFAULTS = T.let(T.unsafe(nil), Hash)

Listen::Adapter::BSD::OS_REGEXP = T.let(T.unsafe(nil), Regexp)

class Listen::Adapter::Base
  def initialize(config); end

  def config; end
  def configure; end
  def options; end
  def start; end
  def started?; end
  def stop; end

  private

  def _log(*args, &block); end
  def _log_exception(msg, caller_stack); end
  def _queue_change(type, dir, rel_path, options); end
  def _stop; end
  def _timed(title); end

  def self.usable?; end
end

Listen::Adapter::Base::DEFAULTS = T.let(T.unsafe(nil), Hash)

class Listen::Adapter::Config
  def initialize(directories, queue, silencer, adapter_options); end

  def adapter_options; end
  def directories; end
  def queue; end
  def silencer; end
end

class Listen::Adapter::Darwin < ::Listen::Adapter::Base

  private

  def _configure(dir, &callback); end
  def _process_event(dir, event); end
  def _run; end
  def _run_worker(worker); end
  def _run_workers_in_background(workers); end
  def _to_array(queue); end

  def self.usable?; end
end

Listen::Adapter::Darwin::DEFAULTS = T.let(T.unsafe(nil), Hash)

Listen::Adapter::Darwin::INCOMPATIBLE_GEM_VERSION = T.let(T.unsafe(nil), String)

Listen::Adapter::Darwin::OS_REGEXP = T.let(T.unsafe(nil), Regexp)

class Listen::Adapter::Linux < ::Listen::Adapter::Base

  private

  def _change(event_flags); end
  def _configure(directory, &callback); end
  def _dir_event?(event); end
  def _process_event(dir, event); end
  def _run; end
  def _skip_event?(event); end
  def _stop; end
end

Listen::Adapter::Linux::DEFAULTS = T.let(T.unsafe(nil), Hash)

Listen::Adapter::Linux::INOTIFY_LIMIT_MESSAGE = T.let(T.unsafe(nil), String)

Listen::Adapter::Linux::OS_REGEXP = T.let(T.unsafe(nil), Regexp)

Listen::Adapter::Linux::WIKI_URL = T.let(T.unsafe(nil), String)

Listen::Adapter::OPTIMIZED_ADAPTERS = T.let(T.unsafe(nil), Array)

Listen::Adapter::POLLING_FALLBACK_MESSAGE = T.let(T.unsafe(nil), String)

class Listen::Adapter::Polling < ::Listen::Adapter::Base

  private

  def _configure(_, &callback); end
  def _process_event(dir, _); end
  def _run; end
end

Listen::Adapter::Polling::DEFAULTS = T.let(T.unsafe(nil), Hash)

Listen::Adapter::Polling::OS_REGEXP = T.let(T.unsafe(nil), Regexp)

class Listen::Adapter::Windows < ::Listen::Adapter::Base

  private

  def _change(type); end
  def _configure(dir); end
  def _process_event(dir, event); end
  def _run; end

  def self.usable?; end
end

Listen::Adapter::Windows::BUNDLER_DECLARE_GEM = T.let(T.unsafe(nil), String)

Listen::Adapter::Windows::OS_REGEXP = T.let(T.unsafe(nil), Regexp)

class Listen::Backend
  extend(::Forwardable)

  def initialize(directories, queue, silencer, config); end

  def min_delay_between_events; end
  def start(*args, &block); end
  def stop(*args, &block); end

  private

  def adapter; end
end

class Listen::Change
  def initialize(config, record); end

  def invalidate(type, rel_path, options); end
  def record; end

  private

  def config; end
end

class Listen::Change::Config
  def initialize(queue, silencer); end

  def queue(*args); end
  def silenced?(path, type); end
end

class Listen::Directory
  def self._async_changes(snapshot, path, previous, options); end
  def self._change(snapshot, type, path, options); end
  def self._children(path); end
  def self.scan(snapshot, rel_path, options); end
end

module Listen::Event
end

class Listen::Event::Config
  def initialize(listener, event_queue, queue_optimizer, wait_for_delay, &block); end

  def call(*args); end
  def callable?; end
  def event_queue; end
  def min_delay_between_events; end
  def optimize_changes(changes); end
  def paused?; end
  def sleep(*args); end
  def stopped?; end
  def timestamp; end

  private

  def listener; end
end

class Listen::Event::Loop
  def initialize(config); end

  def pause; end
  def paused?; end
  def processing?; end
  def resume; end
  def setup; end
  def stopped?; end
  def teardown; end
  def wakeup_on_event; end

  private

  def _nice_error(ex); end
  def _sleep(*args); end
  def _wait_for_changes(ready_queue, config); end
  def _wait_until_resumed(ready_queue); end
  def _wakeup(reason); end
  def config; end
  def state; end
  def state=(_); end
  def wait_thread; end
end

class Listen::Event::Loop::Error < ::RuntimeError
end

class Listen::Event::Loop::Error::NotStarted < ::Listen::Event::Loop::Error
end

class Listen::Event::Processor
  def initialize(config, reasons); end

  def loop_for(latency); end

  private

  def _check_stopped; end
  def _deadline; end
  def _flush_wakeup_reasons; end
  def _process_changes; end
  def _remember_time_of_first_unprocessed_event; end
  def _reset_no_unprocessed_events; end
  def _sleep(_local_reason, *args); end
  def _timestamp; end
  def _wait_until_events; end
  def _wait_until_events_calm_down; end
  def _wait_until_no_longer_paused; end
  def config; end
end

class Listen::Event::Processor::Stopped < ::RuntimeError
end

class Listen::Event::Queue
  extend(::Forwardable)

  def initialize(config, &block); end

  def <<(args); end
  def empty?(*args, &block); end
  def pop(*args, &block); end

  private

  def _safe_relative_from_cwd(dir); end
  def block; end
  def config; end
  def event_queue; end
end

class Listen::Event::Queue::Config
  def initialize(relative); end

  def relative?; end
end

module Listen::FSM
  def initialize; end

  def state; end
  def transition(state_name); end
  def transition!(state_name); end

  protected

  def current_state; end
  def current_state_name; end
  def default_state; end
  def states; end
  def transition_with_callbacks!(state_name); end
  def validate_and_sanitize_new_state(state_name); end

  def self.included(klass); end
end

module Listen::FSM::ClassMethods
  def default_state(new_default = _); end
  def state(*args, &block); end
  def states; end
end

Listen::FSM::DEFAULT_STATE = T.let(T.unsafe(nil), Symbol)

class Listen::FSM::State
  def initialize(name, transitions = _, &block); end

  def call(obj); end
  def name; end
  def transitions; end
  def valid_transition?(new_state); end
end

class Listen::File
  def self.change(record, rel_path); end
  def self.inaccurate_mac_time?(stat); end
end

module Listen::Internals
end

module Listen::Internals::ThreadPool
  def self.add(&block); end
  def self.stop; end
end

class Listen::Listener
  include(::Listen::FSM)
  extend(::Listen::FSM::ClassMethods)

  def initialize(*dirs, &block); end

  def ignore(regexps); end
  def ignore!(regexps); end
  def only(regexps); end
  def pause; end
  def paused?; end
  def processing?; end
  def start; end
  def stop; end

  private

  def backend; end
  def processor; end
end

class Listen::Listener::Config
  def initialize(opts); end

  def adapter_instance_options(klass); end
  def adapter_select_options; end
  def min_delay_between_events; end
  def relative?; end
  def silencer_rules; end
end

Listen::Listener::Config::DEFAULTS = T.let(T.unsafe(nil), Hash)

class Listen::Logger
  def self.debug(*args, &block); end
  def self.error(*args, &block); end
  def self.fatal(*args, &block); end
  def self.info(*args, &block); end
  def self.warn(*args, &block); end
end

class Listen::Options
  def initialize(opts, defaults); end

  def method_missing(name, *_); end
end

class Listen::QueueOptimizer
  def initialize(config); end

  def smoosh_changes(changes); end

  private

  def _calculate_add_remove_difference(actions, path, default_if_exists); end
  def _detect_possible_editor_save(changes); end
  def _logical_action_for(path, actions); end
  def _reinterpret_related_changes(cookies); end
  def _squash_changes(changes); end
  def config; end
end

class Listen::QueueOptimizer::Config
  def initialize(adapter_class, silencer); end

  def debug(*args, &block); end
  def exist?(path); end
  def silenced?(path, type); end
end

class Listen::Record
  def initialize(directory); end

  def add_dir(rel_path); end
  def build; end
  def dir_entries(rel_path); end
  def file_data(rel_path); end
  def root; end
  def unset_path(rel_path); end
  def update_file(rel_path, data); end

  private

  def _auto_hash; end
  def _fast_build_dir(remaining, symlink_detector); end
  def _fast_try_file(entry); end
  def _fast_unset_path(dirname, basename); end
  def _fast_update_file(dirname, basename, data); end
  def tree; end
end

class Listen::Record::Entry
  def initialize(root, relative, name = _); end

  def children; end
  def meta; end
  def name; end
  def real_path; end
  def record_dir_key; end
  def relative; end
  def root; end
  def sys_path; end

  private

  def _entries(dir); end
  def _join; end
end

class Listen::Record::SymlinkDetector
  def initialize; end

  def verify_unwatched!(entry); end

  private

  def _fail(symlinked, real_path); end
end

class Listen::Record::SymlinkDetector::Error < ::RuntimeError
end

Listen::Record::SymlinkDetector::SYMLINK_LOOP_ERROR = T.let(T.unsafe(nil), String)

Listen::Record::SymlinkDetector::WIKI = T.let(T.unsafe(nil), String)

class Listen::Silencer
  def initialize; end

  def configure(options); end
  def ignore_patterns; end
  def ignore_patterns=(_); end
  def only_patterns; end
  def only_patterns=(_); end
  def silenced?(relative_path, type); end

  private

  def _init_ignores(ignores, overrides); end
  def options; end
end

class Listen::Silencer::Controller
  def initialize(silencer, default_options); end

  def append_ignores(*regexps); end
  def replace_with_bang_ignores(regexps); end
  def replace_with_only(regexps); end

  private

  def _reconfigure_silencer(extra_options); end
end

Listen::Silencer::DEFAULT_IGNORED_DIRECTORIES = T.let(T.unsafe(nil), Regexp)

Listen::Silencer::DEFAULT_IGNORED_EXTENSIONS = T.let(T.unsafe(nil), Regexp)

Listen::VERSION = T.let(T.unsafe(nil), String)
