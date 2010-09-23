using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DersDemo_ASP_FormMail
{
    public class EmailProperties
    {
        public string AdSoyad { get; set; }
        public string EPosta { get; set; }
        public string CepTelefonu { get; set; }
        public string Konu { get; set; }
        public string Mesaj { get; set; }

        /// <summary>
        /// Initializes a new instance of the <see cref="EmailProperties"/> class.
        /// </summary>
        public EmailProperties()
        {

        }
        /// <summary>
        /// Initializes a new instance of the <see cref="EmailProperties"/> class.
        /// </summary>
        /// <param name="adSoyad">The ad soyad.</param>
        /// <param name="ePosta">The e posta.</param>
        /// <param name="cepTelefonu">The cep telefonu.</param>
        /// <param name="konu">The konu.</param>
        /// <param name="mesaj">The mesaj.</param>
        public EmailProperties(string adSoyad, string ePosta, string cepTelefonu,
            string konu, string mesaj)
        {
            AdSoyad = adSoyad;
            EPosta = ePosta;
            CepTelefonu = cepTelefonu;
            Konu = konu;
            Mesaj = mesaj;
        }
    }
}
