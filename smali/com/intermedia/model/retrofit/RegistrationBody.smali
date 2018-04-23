.class public Lcom/intermedia/model/retrofit/RegistrationBody;
.super Ljava/lang/Object;
.source "RegistrationBody.java"


# instance fields
.field public final country:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final language:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final referringUsername:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final username:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final verificationId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/intermedia/model/retrofit/RegistrationBody;->country:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/intermedia/model/retrofit/RegistrationBody;->language:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/intermedia/model/retrofit/RegistrationBody;->referringUsername:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/intermedia/model/retrofit/RegistrationBody;->username:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/intermedia/model/retrofit/RegistrationBody;->verificationId:Ljava/lang/String;

    return-void
.end method
