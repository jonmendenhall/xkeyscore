.class public final Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel_ViewModel_MembersInjector;
.super Ljava/lang/Object;
.source "ChangeUsernameDialogViewModel_ViewModel_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final apiErrorParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ApiErrorParser;",
            ">;"
        }
    .end annotation
.end field

.field private final authedApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/AuthedApiService;",
            ">;"
        }
    .end annotation
.end field

.field private final loggedOutApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/LoggedOutApiService;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final userRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/UserRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ApiErrorParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/AuthedApiService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/LoggedOutApiService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/UserRepository;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel_ViewModel_MembersInjector;->apiErrorParserProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel_ViewModel_MembersInjector;->authedApiProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel_ViewModel_MembersInjector;->loggedOutApiProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel_ViewModel_MembersInjector;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel_ViewModel_MembersInjector;->userRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ApiErrorParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/AuthedApiService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/LoggedOutApiService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/UserRepository;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v6, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel_ViewModel_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel_ViewModel_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectApiErrorParser(Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ApiErrorParser;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/network/ApiErrorParser;

    iput-object p1, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->apiErrorParser:Lcom/intermedia/network/ApiErrorParser;

    return-void
.end method

.method public static injectAuthedApi(Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/AuthedApiService;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/network/AuthedApiService;

    iput-object p1, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->authedApi:Lcom/intermedia/network/AuthedApiService;

    return-void
.end method

.method public static injectLoggedOutApi(Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/LoggedOutApiService;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/network/LoggedOutApiService;

    iput-object p1, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->loggedOutApi:Lcom/intermedia/network/LoggedOutApiService;

    return-void
.end method

.method public static injectSessionManager(Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;)V"
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/user/session/SessionManager;

    iput-object p1, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    return-void
.end method

.method public static injectUserRepository(Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/UserRepository;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/user/UserRepository;

    iput-object p1, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->userRepository:Lcom/intermedia/user/UserRepository;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;)V
    .locals 1

    if-nez p1, :cond_0

    .line 63
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cannot inject members into a null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel_ViewModel_MembersInjector;->apiErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/network/ApiErrorParser;

    iput-object v0, p1, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->apiErrorParser:Lcom/intermedia/network/ApiErrorParser;

    .line 66
    iget-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel_ViewModel_MembersInjector;->authedApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/network/AuthedApiService;

    iput-object v0, p1, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->authedApi:Lcom/intermedia/network/AuthedApiService;

    .line 67
    iget-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel_ViewModel_MembersInjector;->loggedOutApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/network/LoggedOutApiService;

    iput-object v0, p1, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->loggedOutApi:Lcom/intermedia/network/LoggedOutApiService;

    .line 68
    iget-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel_ViewModel_MembersInjector;->sessionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/user/session/SessionManager;

    iput-object v0, p1, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    .line 69
    iget-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel_ViewModel_MembersInjector;->userRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/user/UserRepository;

    iput-object v0, p1, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->userRepository:Lcom/intermedia/user/UserRepository;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;

    invoke-virtual {p0, p1}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel_ViewModel_MembersInjector;->injectMembers(Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;)V

    return-void
.end method
