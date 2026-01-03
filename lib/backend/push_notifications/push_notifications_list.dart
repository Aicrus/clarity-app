class PushNotificationScheduled {
  final String initialPage;
  bool isRecurring;
  final String notificationTitle;
  final String notificationText;
  final Map<String, dynamic>? parameterData;

  PushNotificationScheduled({
    this.initialPage = "",
    required this.isRecurring,
    this.notificationTitle = "Clarity",
    required this.notificationText,
    Map<String, dynamic>? parameterData,
  }) : this.parameterData = parameterData ?? {};
}

final List<PushNotificationScheduled> scheduledPushNotificationsList = [
  // 1 day after sign up
  PushNotificationScheduled(
    isRecurring: false,
    notificationText: "É arrivata l'ora di meditare",
  ),
  // 2 days after sign up
  PushNotificationScheduled(
    initialPage: "audioM",
    isRecurring: false,
    notificationText: "Giorno 2 - Scopri il Modello IOS della meditazione",
    parameterData: {"audioRef": "DqeYQdoo3ewDDDHUUtgX|DsSiw50CEP28YLG6FSwv"},
  ),
  // 3 days after sign up
  PushNotificationScheduled(
    initialPage: "audioM",
    isRecurring: false,
    notificationText: "Giorno 3 - Alla scoperta del tuo ciclo dell'attenzione",
    parameterData: {"audioRef": "DqeYQdoo3ewDDDHUUtgX|znhtsVKRQkT7NOGc2zo1"},
  ),
  // 4 days after sign up
  PushNotificationScheduled(
      initialPage: "audioM",
      isRecurring: false,
      notificationText: "Giorno 4 - Impara a praticare l'ascolto attivo",
      parameterData: {
        "audioRef": "DqeYQdoo3ewDDDHUUtgX|KPVPcrQoLXPUpHn0goGX}"
      }),
  // 5 days after sign up
  PushNotificationScheduled(
    initialPage: "audioM",
    isRecurring: false,
    notificationText: "Giorno 5 - Qual è la strada maestra nella meditazione?",
    parameterData: {"audioRef": "DqeYQdoo3ewDDDHUUtgX|Hc25fogi7J4HHr02cqDL"},
  ),
  // 6 days after sign up
  PushNotificationScheduled(
    initialPage: "audioM",
    isRecurring: false,
    notificationText: "Giorno 6 - Migliora produttività e creatività meditando",
    parameterData: {"audioRef": "DqeYQdoo3ewDDDHUUtgX|xqcw1Wv04oH45Ylgze5N"},
  ),
  // 7 days after sign up
  PushNotificationScheduled(
    initialPage: "audioM",
    isRecurring: false,
    notificationText: "Giorno 7 - Scopri come meditare mentre mangi",
    parameterData: {"audioRef": "DqeYQdoo3ewDDDHUUtgX|FksmOSLNiVTNPzqrts4f"},
  ),
  // 8 days after sign up
  PushNotificationScheduled(
    initialPage: "audioM",
    isRecurring: false,
    notificationText: "Giorno 8 - Come meditare attraverso la musica",
    parameterData: {"audioRef": "DqeYQdoo3ewDDDHUUtgX|53NZsNdT42dlm84nEDR1"},
  ),
  // 9 days after sign up
  PushNotificationScheduled(
    initialPage: "audioM",
    isRecurring: false,
    notificationText: "Giorno 9 - Ti va una passeggiata nella presenza?",
    parameterData: {"audioRef": "DqeYQdoo3ewDDDHUUtgX|hP14rlRygCx3a8JZcjQo"},
  ),
  // 10 days after sign up
  PushNotificationScheduled(
    initialPage: "audioM",
    isRecurring: false,
    notificationText: "Giorno 10 - Pratica l'allenamento degli allenamenti",
    parameterData: {"audioRef": "DqeYQdoo3ewDDDHUUtgX|PuGsAi9gRRfc1Om4ObF1"},
  ),
  // 11 days after sign up
  PushNotificationScheduled(
    initialPage: "audioM",
    isRecurring: false,
    notificationText: "Bonus - Continua a meditare dopo i 10 giorni",
    parameterData: {"audioRef": "DqeYQdoo3ewDDDHUUtgX|mjtZA2Iwpvk7qWbGqgq6"},
  ),
  // 12 days after sign up
  PushNotificationScheduled(
    initialPage: "homeM",
    isRecurring: false,
    notificationText: "Com'è andata con la meditazione?",
    parameterData: {"openRatingModal": true},
  ),
  // 13 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText: "Non puoi trovare pace evitando di vivere.",
  ),
  // 14 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText: "Quanto siete felici, fateci caso.",
  ),
  // 15 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText: "Più sai, di meno cose hai bisogno.",
  ),
  // 16 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText: "Accetta la possibilità di sbagliare.",
  ),
  // 17 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText: "La pace viene da dentro, non cercarla fuori.",
  ),
  // 18 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText: "Il silenzio non è vuoto, è pieno di risposte.",
  ),
  // 19 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText: "Nota quante cose belle ci sono nella tua vita.",
  ),
  // 20 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText: "Sii il cambiamento che vuoi vedere nel mondo.",
  ),
  // 21 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText: "Ciò che importa è la vita, non l’aver vissuto.",
  ),
  // 22 days after sign
  PushNotificationScheduled(
    isRecurring: true,
    notificationText: "Conosco una sola libertà, la libertà della mente",
  ),
  // 23 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText: "In ognuno di noi c'è un altro che non conosciamo.",
  ),
  // 24 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText: "Chi non medita è come colui che non si specchia mai.",
  ),
  // 25 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText: "Impara a stare calmo. Non tutto merita una reazione.",
  ),
  // 26 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText: "Meditare è guardare in profondità nel cuore delle cose.",
  ),
  // 27 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "L'unico vero errore è quello da cui non impariamo nulla.",
  ),
  // 28 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Non è grande uomo chi sa molto, ma chi ha molto meditato.",
  ),
  // 29 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Una parola che porta la pace è meglio di mille parole vuote.",
  ),
  // 30 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Tutta la vita è un esperimento. Più esperimenti fai, meglio è.",
  ),
  // 31 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "La meditazione è un lavoro della mente per riscaldare il cuore.",
  ),
  // 32 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "La vita è per il 10% cosa ti accade e per il 90% come reagisci.",
  ),
  // 33 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "La vita è nostra per essere vissuta, non per essere risparmiata.",
  ),
  // 34 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Non c'è strada che porti alla felicità: la felicità è la strada.",
  ),
  // 35 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "I saggi rimangono calmi e silenziosi in attesa del tempo giusto.",
  ),
  // 36 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Fare quello che ami è la via per avere abbondanza nella tua vita.",
  ),
  // 37 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "La consapevolezza è beatitudine, l'inconsapevolezza è infelicità.",
  ),
  // 38 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "La bellezza comincia nel momento in cui decidi di essere te stesso.",
  ),
  // 39 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "La meditazione non è un’evasione ma un incontro sereno con la realtà.",
  ),
  // 40 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Per avere più di quello che hai, devi diventare più di quello che sei.",
  ),
  // 41 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Quando cambi il modo di guardare le cose, le cose che guardi cambiano.",
  ),
  // 42 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "La vita è ciò che ti accade mentre sei occupato a fare altri progetti.",
  ),
  // 43 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Chi vive in armonia con se stesso, vive in armonia con tutto l’universo.",
  ),
  // 44 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "La meditazione è uno specchio per la mente e una lampada per la coscienza",
  ),
  // 45 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Non scoraggiatevi, è spesso l'ultima chiave quella che apre la serratura.",
  ),
  // 46 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Sono consapevole dell'aria che entra. Sono consapevole dell'aria che esce.",
  ),
  // 47 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Molto spesso scegliamo proprio il silenzio per dire le cose più importanti.",
  ),
  // 48 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Come definire la meditazione? Come la saggezza alla ricerca della saggezza.",
  ),
  // 49 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Il segreto della felicità è imparare ogni giorno a lasciar andare qualcosa.",
  ),
  // 50 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Se la vita è solo un passaggio, in questo passaggio seminiamo almeno fiori.",
  ),
  // 51 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Abbiamo due vite: la seconda inizia quando ci accorgiamo di averne una sola.",
  ),
  // 52 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "La meditazione è il vento che porta via le nuvole dal nostro sole interiore.",
  ),
  // 53 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Nella vita non si fa ciò che si vuole, ma si è responsabili di ciò che si è.",
  ),
  // 54 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Lo straordinario accade solo quando inizi a vivere le piccole cose ordinarie.",
  ),
  // 55 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Ogni persona che incontri è migliore di te in qualcosa; in quella cosa impara.",
  ),
  // 56 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Comprendere gli esseri umani è intelligenza, comprendere se stessi è saggezza.",
  ),
  // 57 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Più si è distanti dal proprio sé, più si dipende dall'approvazione degli altri.",
  ),
  // 58 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "La gentilezza dovrebbe diventare un dono naturale della vita, non un'eccezione.",
  ),
  // 59 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Il tuo tempo è limitato, quindi non sprecarlo vivendo la vita di qualcun altro.",
  ),
  // 60 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Cadendo, la goccia scava la pietra, non per la sua forza, ma per la sua costanza.",
  ),
  // 61 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Chi dedica tempo a migliorare se stesso, non trova tempo per criticare gli altri.",
  ),
  // 62 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Cambia, ma inizia lentamente, perché la direzione è più importante della velocità.",
  ),
  // 63 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "La più alta forma di intelligenza umana è la capacità di osservare senza giudicare.",
  ),
  // 64 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "La nostra vita è lo strumento mediante il quale compiamo esperimenti con la verità.",
  ),
  // 65 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Il piacere più grande nella vita è fare ciò che le persone dicono che non puoi fare.",
  ),
  // 66 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "La super coscienza è come il cielo infinito sopra di noi, con le sue infinite stelle.",
  ),
  // 67 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Per raggiungere l'obiettivo occorrono silenzio, meditazione e astensione dal giudizio.",
  ),
  // 68 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "La meditazione non ha un significato che porta ad un fine. È sia significato che fine.",
  ),
  // 69 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Non é cosí strano per alcune persone trascorrere la vita in attesa di iniziare a vivere.",
  ),
  // 70 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "L’atteggiamento essenziale per una corretta meditazione è quello di mettersi in ascolto.",
  ),
  // 71 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Lo stolto cerca la felicità nelle cose lontane; il saggio la trova sotto ai propri piedi.",
  ),
  // 72 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Vivere è la cosa più rara al mondo. La maggior parte delle persone esiste, e nulla più.",
  ),
  // 73 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "La meditazione è l’unico tempio in cui, quando entri, sei davvero all’interno di un tempio.",
  ),
  // 74 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Il dono di imparare a meditare è il dono più grande che puoi dare a te stesso in questa vita.",
  ),
  // 75 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Con la pratica della meditazione scoprirete che avete un paradiso portatile nel vostro cuore.",
  ),
  // 76 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Nella vita crescere significa scendere in profondità dentro di te, lì dove sono le tue radici.",
  ),
  // 77 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Alla fine, ciò che conta non sono gli anni della tua vita, ma la vita che metti in quegli anni.",
  ),
  // 78 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "La meditazione è la scoperta che la meta dell'esistenza è sempre raggiunta nell'istante presente.",
  ),
  // 79 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Quando si smette di pensare a ciò che può succedere si inizia a godere di ciò che sta succedendo.",
  ),
  // 80 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Il tuo corpo invecchia senza il tuo permesso. Il tuo spirito invecchia solo se tu glielo permetti.",
  ),
  // 81 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "Per tornare a casa è sufficiente mettersi seduti e stare con se stessi, accettare la situazione com’è.",
  ),
  // 82 days after sign up
  PushNotificationScheduled(
    isRecurring: true,
    notificationText:
        "L'amore è l'arte di stare con gli altri, la meditazione è l'arte di essere in relazione con se stessi.",
    parameterData: {"renewScheduledNotifications": true},
  ),
];
