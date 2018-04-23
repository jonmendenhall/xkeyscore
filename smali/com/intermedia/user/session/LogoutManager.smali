.class public Lcom/intermedia/user/session/LogoutManager;
.super Ljava/lang/Object;
.source "LogoutManager.java"


# annotations
.annotation runtime Lcom/intermedia/injection/UserScope;
.end annotation


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final sessionManager:Lcom/intermedia/user/session/SessionManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final userRepository:Lcom/intermedia/user/UserRepository;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/intermedia/user/session/SessionManager;Lcom/intermedia/user/UserRepository;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/user/session/SessionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/intermedia/user/UserRepository;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/intermedia/user/session/LogoutManager;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/intermedia/user/session/LogoutManager;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    .line 26
    iput-object p3, p0, Lcom/intermedia/user/session/LogoutManager;->userRepository:Lcom/intermedia/user/UserRepository;

    return-void
.end method


# virtual methods
.method public logout()V
    .locals 3

    .line 30
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    .line 31
    iget-object v0, p0, Lcom/intermedia/user/session/LogoutManager;->userRepository:Lcom/intermedia/user/UserRepository;

    iget-object v1, p0, Lcom/intermedia/user/session/LogoutManager;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    invoke-virtual {v1}, Lcom/intermedia/user/session/SessionManager;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/intermedia/user/UserRepository;->removeUser(J)V

    .line 32
    iget-object v0, p0, Lcom/intermedia/user/session/LogoutManager;->userRepository:Lcom/intermedia/user/UserRepository;

    invoke-virtual {v0}, Lcom/intermedia/user/UserRepository;->release()V

    .line 33
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "app_logout"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/intermedia/user/session/LogoutManager;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    invoke-virtual {v0}, Lcom/intermedia/user/session/SessionManager;->resetSession()V

    .line 35
    iget-object v0, p0, Lcom/intermedia/user/session/LogoutManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/intermedia/login/LoginActivity;->start(Landroid/content/Context;)V

    return-void
.end method
