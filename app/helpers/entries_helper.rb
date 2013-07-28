module EntriesHelper
  def transaction
    @transaction || @entry.transaction
  end
end
