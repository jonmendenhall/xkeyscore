.class public final Lcom/intermedia/user/session/LogoutManager_Factory;
.super Ljava/lang/Object;
.source "LogoutManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/user/session/LogoutManager;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/UserRepository;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/intermedia/user/session/LogoutManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/intermedia/user/session/LogoutManager_Factory;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/intermedia/user/session/LogoutManager_Factory;->userRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/UserRepository;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/user/session/LogoutManager;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/intermedia/user/session/LogoutManager_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/intermedia/user/session/LogoutManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newLogoutManager(Landroid/content/Context;Lcom/intermedia/user/session/SessionManager;Lcom/intermedia/user/UserRepository;)Lcom/intermedia/user/session/LogoutManager;
    .locals 1

    .line 51
    new-instance v0, Lcom/intermedia/user/session/LogoutManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/intermedia/user/session/LogoutManager;-><init>(Landroid/content/Context;Lcom/intermedia/user/session/SessionManager;Lcom/intermedia/user/UserRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/intermedia/user/session/LogoutManager;
    .locals 4

    .line 34
    new-instance v0, Lcom/intermedia/user/session/LogoutManager;

    iget-object v1, p0, Lcom/intermedia/user/session/LogoutManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 35
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/intermedia/user/session/LogoutManager_Factory;->sessionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intermedia/user/session/SessionManager;

    iget-object v3, p0, Lcom/intermedia/user/session/LogoutManager_Factory;->userRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/intermedia/user/UserRepository;

    invoke-direct {v0, v1, v2, v3}, Lcom/intermedia/user/session/LogoutManager;-><init>(Landroid/content/Context;Lcom/intermedia/user/session/SessionManager;Lcom/intermedia/user/UserRepository;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/intermedia/user/session/LogoutManager_Factory;->get()Lcom/intermedia/user/session/LogoutManager;

    move-result-object v0

    return-object v0
.end method
