require "redis"
REDIS = Redis.new

class MaxOrdinalNumber
  EXPIRE_DAY = 1
  EXPIRE_SEC = 60 * 60 * 24 * EXPIRE_DAY
  KEY_PREFIX = "max_ordinal_number"


  def initialize(screening_id)
    @screening_id = "#{KEY_PREFIX}:#{screening_id}"
  end

  def get
    REDIS.get(@screening_id).to_i
  end

  def set(number)
    REDIS.set(@screening_id, number)
    REDIS.expire(@screening_id, EXPIRE_SEC)
  end
end
