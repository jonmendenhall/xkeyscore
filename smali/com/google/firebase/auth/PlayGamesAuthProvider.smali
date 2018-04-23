.class public Lcom/google/firebase/auth/PlayGamesAuthProvider;
.super Ljava/lang/Object;


# static fields
.field public static final PROVIDER_ID:Ljava/lang/String; = "playgames.google.com"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCredential(Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/firebase/auth/PlayGamesAuthCredential;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/PlayGamesAuthCredential;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
