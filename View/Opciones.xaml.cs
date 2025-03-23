using TrashTec_MVVM_5B.Models;

namespace TrashTec_MVVM_5B.View;

public partial class Opciones : ContentPage
{
	public Opciones()
	{
		InitializeComponent();
	}

    private async void Button_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new EditarBotePage());

    }

    private async void Button_Clicked_1(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new EliminarBote());
    }
}