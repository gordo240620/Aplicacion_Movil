using Microsoft.Win32;
using TrashTec_MVVM_5B.View;

namespace TrashTec_MVVM_5B
{
    public partial class MainPage : ContentPage
    {
       

        public MainPage()
        {
            InitializeComponent();
        }


        private async void OnRegistrarClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Login());
        }


    }




}
