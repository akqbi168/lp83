class HomesController < ApplicationController
  def top
    @newsall = News.all.where(published: true).order(year: :desc).order(month: :desc).order(date: :desc)
    @artistsall = Partner.all.where(tag_id: 1).order(name: :asc)
    @partners = Partner.all.where(published: true).order(name: :asc)

    @form = Form.new
  end

  def kanri
    @newsall = News.all.order(year: :desc).order(month: :desc).order(date: :desc)
    @partnersall = Partner.all.order(tag_id: :asc).order(name: :asc)
  end

  def new
    @news = News.new
    @partner = Partner.new
  end

  def form
    @forms = Form.all
  end
end
