using TrashTec_MVVM_5B.Models;
using TrashTec_MVVM_5B.ViewModels;

namespace TrashTec_MVVM_5B.View;

public partial class Login : ContentPage
{
	public Login()
	{
		InitializeComponent();
	}

    
    private async void Button_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new Principal());
    }
}