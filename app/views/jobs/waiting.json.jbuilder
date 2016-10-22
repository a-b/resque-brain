json.array! @jobs_waiting_by_queue.keys.sort do |queue_name|
  json.queue queue_name
  json.jobs @jobs_waiting_by_queue[queue_name], partial: 'job', as: :job
end

