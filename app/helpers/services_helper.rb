module ServicesHelper

  def expert_users
    @expert_users ||= Role.find_by_role('expert').users
  end

end
