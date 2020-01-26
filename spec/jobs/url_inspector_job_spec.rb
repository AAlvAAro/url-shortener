require 'rails_helper'

RSpec.describe UrlInspectorJob, type: :job do
  describe '#perform_later' do
    it 'fetches a page title' do
      ActiveJob::Base.queue_adapter = :test

      expect {
        described_class.perform_later('abcde')
      }.to have_enqueued_job
    end
  end
end
