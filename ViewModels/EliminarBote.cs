using System.Windows.Input;

namespace TrashTec_MVVM_5B.ViewModels;

public class EliminarBote : BindableObject
{
    public ICommand CancelarCommand { get; }
    public ICommand AceptarCommand { get; }

    public Models.EliminarBote BoteAEliminar { get; set; }

    public EliminarBote()
    {
        BoteAEliminar = new Models.EliminarBote
        {
            Id = 1,
            Nombre = "Bote de Ejemplo",
            FechaCreacion = DateTime.Now,
            Descripcion = "Ejemplo de bote",
            Activo = true
        };

        CancelarCommand = new Command(OnCancelar);
        AceptarCommand = new Command(OnAceptar);
    }

    private async void OnCancelar()
    {
        await Shell.Current.GoToAsync(".."); // Navegar atr�s
    }

    private async void OnAceptar()
    {
        bool eliminado = await Eliminar();

        if (eliminado)
        {
            await Shell.Current.DisplayAlert("�xito", "Bote eliminado correctamente", "OK");
            await Shell.Current.GoToAsync("..");
        }
        else
        {
            await Shell.Current.DisplayAlert("Error", "No se pudo eliminar el bote", "OK");
        }
    }

    private Task<bool> Eliminar()
    {
        // Simula la eliminaci�n real
        return Task.FromResult(true);
    }
}
