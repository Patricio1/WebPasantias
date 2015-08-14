using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SMC.DataAccessLayer
{
    /// <summary>
    /// Permite indicar para que plataforma (Windows, Web, etc) se va a administrar 
    /// excepciones en el front-end.
    /// </summary>
    public enum Plataforma
    {
        Windows,
        Web
    }
}
