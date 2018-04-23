.class public final Lcom/firebase/ui/auth/data/client/CountryListLoadTask;
.super Landroid/os/AsyncTask;
.source "CountryListLoadTask.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/ui/auth/data/client/CountryListLoadTask$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/firebase/ui/auth/data/model/CountryInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final MAX_COUNTRIES:I = 0x123


# instance fields
.field private final mListener:Lcom/firebase/ui/auth/data/client/CountryListLoadTask$Listener;


# direct methods
.method public constructor <init>(Lcom/firebase/ui/auth/data/client/CountryListLoadTask$Listener;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/firebase/ui/auth/data/client/CountryListLoadTask;->mListener:Lcom/firebase/ui/auth/data/client/CountryListLoadTask$Listener;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/data/client/CountryListLoadTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/firebase/ui/auth/data/model/CountryInfo;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x123

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v3, ""

    const-string v4, "AF"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x5d

    invoke-direct {v1, v2, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v3, ""

    const-string v4, "AX"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x166

    invoke-direct {v1, v2, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v4, ""

    const-string v5, "AL"

    invoke-direct {v2, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x163

    invoke-direct {v1, v2, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v4, ""

    const-string v5, "DZ"

    invoke-direct {v2, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xd5

    invoke-direct {v1, v2, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v4, ""

    const-string v5, "AS"

    invoke-direct {v2, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "AD"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x178

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "AO"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xf4

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "AI"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "AG"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "AR"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x36

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "AM"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x176

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "AW"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x129

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "AC"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xf7

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "AU"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x3d

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "AT"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x2b

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "AZ"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x3e2

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "BS"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "BH"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x3cd

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "BD"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x370

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "BB"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "BY"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x177

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "BE"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x20

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "BZ"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1f5

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "BJ"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xe5

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "BM"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "BT"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x3cf

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "BO"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x24f

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "BA"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x183

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "BW"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x10b

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "BR"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x37

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "IO"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xf6

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "VG"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "BN"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x2a1

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "BG"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x167

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "BF"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xe2

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "BI"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x101

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "KH"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x357

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "CM"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xed

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "CA"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "CV"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xee

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "BQ"

    invoke-direct {v2, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x257

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "KY"

    invoke-direct {v2, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "CF"

    invoke-direct {v2, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xec

    invoke-direct {v1, v2, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "TD"

    invoke-direct {v2, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xeb

    invoke-direct {v1, v2, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "CL"

    invoke-direct {v2, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x38

    invoke-direct {v1, v2, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "CN"

    invoke-direct {v2, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x56

    invoke-direct {v1, v2, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "CX"

    invoke-direct {v2, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "CC"

    invoke-direct {v2, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v7, "CO"

    invoke-direct {v2, v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x39

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v7, "KM"

    invoke-direct {v2, v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10d

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v7, "CD"

    invoke-direct {v2, v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xf3

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v7, "CG"

    invoke-direct {v2, v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xf2

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v7, "CK"

    invoke-direct {v2, v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x2aa

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v7, "CR"

    invoke-direct {v2, v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1fa

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v7, "CI"

    invoke-direct {v2, v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xe1

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v7, "HR"

    invoke-direct {v2, v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x181

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v7, "CU"

    invoke-direct {v2, v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x35

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v7, "CW"

    invoke-direct {v2, v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "CY"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x165

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "CZ"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1a4

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "DK"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x2d

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "DJ"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xfd

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "DM"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "DO"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "TL"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x29e

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "EC"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x251

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "EG"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x14

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "SV"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1f7

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "GQ"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xf0

    invoke-direct {v1, v2, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "ER"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v5, "EE"

    invoke-direct {v1, v2, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x174

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v5, "ET"

    invoke-direct {v1, v2, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xfb

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v5, "FK"

    invoke-direct {v1, v2, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "FO"

    invoke-direct {v1, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x12a

    invoke-direct {v0, v1, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "FJ"

    invoke-direct {v1, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x2a7

    invoke-direct {v0, v1, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "FI"

    invoke-direct {v1, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v5, "FR"

    invoke-direct {v1, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x21

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v5, "GF"

    invoke-direct {v1, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x252

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v5, "PF"

    invoke-direct {v1, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2b1

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v5, "GA"

    invoke-direct {v1, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xf1

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v5, "GM"

    invoke-direct {v1, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xdc

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v5, "GE"

    invoke-direct {v1, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3e3

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v5, "DE"

    invoke-direct {v1, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x31

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v5, "GH"

    invoke-direct {v1, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xe9

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v5, "GI"

    invoke-direct {v1, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x15e

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v5, "GR"

    invoke-direct {v1, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v5, "GL"

    invoke-direct {v1, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x12b

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v5, "GD"

    invoke-direct {v1, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v5, "GP"

    invoke-direct {v1, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x24e

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "GU"

    invoke-direct {v1, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "GT"

    invoke-direct {v1, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1f6

    invoke-direct {v0, v1, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, "GG"

    invoke-direct {v1, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x2c

    invoke-direct {v0, v1, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "GN"

    invoke-direct {v1, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xe0

    invoke-direct {v0, v1, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "GW"

    invoke-direct {v1, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xf5

    invoke-direct {v0, v1, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "GY"

    invoke-direct {v1, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x250

    invoke-direct {v0, v1, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "HT"

    invoke-direct {v1, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1fd

    invoke-direct {v0, v1, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v6, ""

    const-string v7, "HM"

    invoke-direct {v1, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x2a0

    invoke-direct {v0, v1, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "HN"

    invoke-direct {v1, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x1f8

    invoke-direct {v0, v1, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "HK"

    invoke-direct {v1, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x354

    invoke-direct {v0, v1, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "HU"

    invoke-direct {v1, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x24

    invoke-direct {v0, v1, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "IS"

    invoke-direct {v1, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x162

    invoke-direct {v0, v1, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "IN"

    invoke-direct {v1, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x5b

    invoke-direct {v0, v1, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "ID"

    invoke-direct {v1, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x3e

    invoke-direct {v0, v1, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "IR"

    invoke-direct {v1, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x62

    invoke-direct {v0, v1, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "IQ"

    invoke-direct {v1, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x3c4

    invoke-direct {v0, v1, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "IE"

    invoke-direct {v1, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x161

    invoke-direct {v0, v1, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "IM"

    invoke-direct {v1, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "IL"

    invoke-direct {v1, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x3cc

    invoke-direct {v0, v1, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "IT"

    invoke-direct {v1, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x27

    invoke-direct {v0, v1, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "JM"

    invoke-direct {v1, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "JP"

    invoke-direct {v1, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x51

    invoke-direct {v0, v1, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "JE"

    invoke-direct {v1, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "JO"

    invoke-direct {v1, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x3c2

    invoke-direct {v0, v1, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v8, "KZ"

    invoke-direct {v1, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x7

    invoke-direct {v0, v1, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v8, ""

    const-string v9, "KE"

    invoke-direct {v1, v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0xfe

    invoke-direct {v0, v1, v8}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v8, ""

    const-string v9, "KI"

    invoke-direct {v1, v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x2ae

    invoke-direct {v0, v1, v8}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v8, ""

    const-string v9, "XK"

    invoke-direct {v1, v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x17d

    invoke-direct {v0, v1, v8}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "KW"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x3c5

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "KG"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x3e4

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "LA"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x358

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "LV"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x173

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "LB"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x3c1

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "LS"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x10a

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "LR"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xe7

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "LY"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xda

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "LI"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x1a7

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "LT"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x172

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "LU"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x160

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "MO"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x355

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "MK"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x185

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "MG"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x105

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "MW"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x109

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "MY"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x3c

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "MV"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x3c0

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "ML"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xdf

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "MT"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x164

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "MH"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x2b4

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "MQ"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x254

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "MR"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xde

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "MU"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xe6

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v10, "YT"

    invoke-direct {v1, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x106

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v10, ""

    const-string v11, "MX"

    invoke-direct {v1, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x34

    invoke-direct {v0, v1, v10}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v10, ""

    const-string v11, "FM"

    invoke-direct {v1, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x2b3

    invoke-direct {v0, v1, v10}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v10, ""

    const-string v11, "MD"

    invoke-direct {v1, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x175

    invoke-direct {v0, v1, v10}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v10, ""

    const-string v11, "MC"

    invoke-direct {v1, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x179

    invoke-direct {v0, v1, v10}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v10, ""

    const-string v11, "MN"

    invoke-direct {v1, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x3d0

    invoke-direct {v0, v1, v10}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v10, ""

    const-string v11, "ME"

    invoke-direct {v1, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x17e

    invoke-direct {v0, v1, v10}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v10, ""

    const-string v11, "MS"

    invoke-direct {v1, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v10, ""

    const-string v11, "MA"

    invoke-direct {v1, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xd4

    invoke-direct {v0, v1, v10}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "MZ"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x102

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "MM"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x5f

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "NA"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x108

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "NR"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x2a2

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "NP"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x3d1

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "NL"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x1f

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "NC"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x2af

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "NZ"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x40

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "NI"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x1f9

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "NE"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0xe3

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "NG"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0xea

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "NU"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x2ab

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "NF"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v6, ""

    const-string v11, "KP"

    invoke-direct {v1, v6, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x352

    invoke-direct {v0, v1, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v6, ""

    const-string v11, "MP"

    invoke-direct {v1, v6, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v6, ""

    const-string v11, "NO"

    invoke-direct {v1, v6, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x2f

    invoke-direct {v0, v1, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "OM"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x3c8

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "PK"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x5c

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "PW"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x2a8

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "PS"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x3ca

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "PA"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x1fb

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "PG"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x2a3

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "PY"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x253

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "PE"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x33

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "PH"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x3f

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "PL"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x30

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "PT"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x15f

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "PR"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "QA"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x3ce

    invoke-direct {v0, v1, v11}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v11, ""

    const-string v12, "RE"

    invoke-direct {v1, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v11, "RO"

    invoke-direct {v1, v9, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x28

    invoke-direct {v0, v1, v9}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v9, ""

    const-string v11, "RU"

    invoke-direct {v1, v9, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v9, "RW"

    invoke-direct {v1, v7, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xfa

    invoke-direct {v0, v1, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v9, "BL"

    invoke-direct {v1, v7, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v9, "SH"

    invoke-direct {v1, v7, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x122

    invoke-direct {v0, v1, v7}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v9, "KN"

    invoke-direct {v1, v7, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v9, "LC"

    invoke-direct {v1, v7, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v7, ""

    const-string v9, "MF"

    invoke-direct {v1, v7, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v7, "PM"

    invoke-direct {v1, v3, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1fc

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v7, "VC"

    invoke-direct {v1, v3, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v7, "WS"

    invoke-direct {v1, v3, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2ad

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v7, "SM"

    invoke-direct {v1, v3, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x17a

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v7, "ST"

    invoke-direct {v1, v3, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xef

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v7, "SA"

    invoke-direct {v1, v3, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3c6

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v7, "SN"

    invoke-direct {v1, v3, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xdd

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v7, "RS"

    invoke-direct {v1, v3, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v8}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v7, "SC"

    invoke-direct {v1, v3, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xf8

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v7, "SL"

    invoke-direct {v1, v3, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xe8

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v7, "SG"

    invoke-direct {v1, v3, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x41

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v7, "SX"

    invoke-direct {v1, v3, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v7, "SK"

    invoke-direct {v1, v3, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1a5

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v7, "SI"

    invoke-direct {v1, v3, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x182

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v7, "SB"

    invoke-direct {v1, v3, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2a5

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v7, "SO"

    invoke-direct {v1, v3, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xfc

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v7, "ZA"

    invoke-direct {v1, v3, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    const-string v7, "GS"

    invoke-direct {v1, v3, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "KR"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x52

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "SS"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xd3

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "ES"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "LK"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x5e

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "SD"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xf9

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "SR"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x255

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "SJ"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v6}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "SZ"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x10c

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "SE"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "CH"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "SY"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3c3

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "TW"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x376

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "TJ"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3e0

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "TZ"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xff

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "TH"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x42

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "TG"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe4

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "TK"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2b2

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "TO"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2a4

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "TT"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "TN"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xd8

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "TR"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "TM"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3e1

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "TC"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "TV"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2b0

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "VI"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "UG"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "UA"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x17c

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "AE"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3cb

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "GB"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v5}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "US"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "UY"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x256

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "UZ"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3e6

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "VU"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2a6

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "VA"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x17b

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "VE"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3a

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "VN"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x54

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "WF"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2a9

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "EH"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v10}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "YE"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3c7

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "ZM"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x104

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, "ZW"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x107

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/data/client/CountryListLoadTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/firebase/ui/auth/data/model/CountryInfo;",
            ">;)V"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/firebase/ui/auth/data/client/CountryListLoadTask;->mListener:Lcom/firebase/ui/auth/data/client/CountryListLoadTask$Listener;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/firebase/ui/auth/data/client/CountryListLoadTask;->mListener:Lcom/firebase/ui/auth/data/client/CountryListLoadTask$Listener;

    invoke-interface {v0, p1}, Lcom/firebase/ui/auth/data/client/CountryListLoadTask$Listener;->onLoadComplete(Ljava/util/List;)V

    :cond_0
    return-void
.end method
