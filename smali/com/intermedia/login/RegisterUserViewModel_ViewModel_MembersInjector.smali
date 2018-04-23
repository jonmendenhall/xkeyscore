.class public final Lcom/intermedia/login/RegisterUserViewModel_ViewModel_MembersInjector;
.super Ljava/lang/Object;
.source "RegisterUserViewModel_ViewModel_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/intermedia/login/RegisterUserViewModel$ViewModel;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final apiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/LoggedOutApiService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/LoggedOutApiService;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/intermedia/login/RegisterUserViewModel_ViewModel_MembersInjector;->apiProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/LoggedOutApiService;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/login/RegisterUserViewModel$ViewModel;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/intermedia/login/RegisterUserViewModel_ViewModel_MembersInjector;

    invoke-direct {v0, p0}, Lcom/intermedia/login/RegisterUserViewModel_ViewModel_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectApi(Lcom/intermedia/login/RegisterUserViewModel$ViewModel;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/login/RegisterUserViewModel$ViewModel;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/LoggedOutApiService;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/network/LoggedOutApiService;

    iput-object p1, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->api:Lcom/intermedia/network/LoggedOutApiService;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/intermedia/login/RegisterUserViewModel$ViewModel;)V
    .locals 1

    if-nez p1, :cond_0

    .line 30
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cannot inject members into a null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserViewModel_ViewModel_MembersInjector;->apiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/network/LoggedOutApiService;

    iput-object v0, p1, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->api:Lcom/intermedia/network/LoggedOutApiService;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;

    invoke-virtual {p0, p1}, Lcom/intermedia/login/RegisterUserViewModel_ViewModel_MembersInjector;->injectMembers(Lcom/intermedia/login/RegisterUserViewModel$ViewModel;)V

    return-void
.end method
