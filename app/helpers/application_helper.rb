module ApplicationHelper
  BOOTSTRAP_COLORS = { notice: 'success', alert: 'danger' }.freeze

  def github_url(author, repo)
    link_to repo, "https://github.com/#{author}/#{repo}", target: :blank
  end

  def current_year
    Date.current.year
  end

  def bootstrap_flash_color(key)
    BOOTSTRAP_COLORS[key.to_sym] || 'primary'
  end
end
