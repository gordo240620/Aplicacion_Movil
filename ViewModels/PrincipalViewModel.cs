using System.Collections.ObjectModel;
using System.Windows.Input;
using TrashTec_MVVM_5B.Models;
using TrashTec_MVVM_5B.View;
using EliminarBote = TrashTec_MVVM_5B.View.EliminarBote;

namespace TrashTec_MVVM_5B.ViewModels;

public class PrincipalViewModel : BindableObject
{
    
     private ObservableCollection<Bote> _botes;
    public ObservableCollection<Bote> Botes
    {
        get => _botes;
        set
        {
            _botes = value;
            OnPropertyChanged();
        }
    }

    public ICommand AgregarBoteCommand { get; }

    public PrincipalViewModel()
    {
        Botes = new ObservableCollection<Bote>
            {
                new Bote { Nombre = "CDS", NivelLlenado = 50 },
                new Bote { Nombre = "Cisco", NivelLlenado = 100 },
                new Bote { Nombre = "Microsoft", NivelLlenado = 25 },
                new Bote { Nombre = "Edificio", NivelLlenado = 75 }
            };

        AgregarBoteCommand = new Command(AgregarNuevoBote);

        // Iniciar el temporizador usando Dispatcher
        Application.Current.Dispatcher.StartTimer(TimeSpan.FromSeconds(3), () =>
        {
            ActualizarNiveles();
            return true; // Devuelve true para que siga repitiéndose
        });
    }

    private void AgregarNuevoBote()
    {
        Botes.Add(new Bote { Nombre = "Nuevo Bote", NivelLlenado = 0 });
    }

    private void ActualizarNiveles()
    {
        Random rand = new Random();
        foreach (var bote in Botes)
        {
            bote.NivelLlenado = Math.Min(100, bote.NivelLlenado + rand.Next(5, 15)); // Aumenta entre 5% y 15%
            OnPropertyChanged(nameof(Botes));
        }
    }
}
