class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /contacts
  def index
    @contacts = Contact.all
  end

  # GET /contacts/1
  def show
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to @contact, notice: 'Contact was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /contacts/1
  def update
    if @contact.update(contact_params)
      redirect_to @contact, notice: 'Contact was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /contacts/1
  def destroy
    @contact.destroy
    redirect_to contacts_url, notice: 'Contact was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def readonly
       %w[index show].include?(action_name) ? true : false
    end
    helper_method :readonly

    # Only allow a trusted parameter "white list" through.
    def contact_params
      params.require(:contact).permit(:first_name,
                                      :last_name,
                                      :street_1,
                                      :street_2,
                                      :city,
                                      :subnational_jurisdiction,
                                      :postal_code,
                                      :country,
                                      phones_attributes: [:id, :number, :label, :_destroy],
                                      emails_attributes: [:id, :address, :label, :_destroy])
    end
end
