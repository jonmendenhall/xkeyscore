.class public final Lcom/intermedia/user/session/AccessTokenRefresher_Factory;
.super Ljava/lang/Object;
.source "AccessTokenRefresher_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/user/session/AccessTokenRefresher;",
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

.field private final apiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/LoggedOutApiService;",
            ">;"
        }
    .end annotation
.end field

.field private final logoutManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/LogoutManager;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/LoggedOutApiService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ApiErrorParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/LogoutManager;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/intermedia/user/session/AccessTokenRefresher_Factory;->apiProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/intermedia/user/session/AccessTokenRefresher_Factory;->apiErrorParserProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/intermedia/user/session/AccessTokenRefresher_Factory;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/intermedia/user/session/AccessTokenRefresher_Factory;->logoutManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/LoggedOutApiService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ApiErrorParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/LogoutManager;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/user/session/AccessTokenRefresher;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/intermedia/user/session/AccessTokenRefresher_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/intermedia/user/session/AccessTokenRefresher_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newAccessTokenRefresher(Lcom/intermedia/network/LoggedOutApiService;Lcom/intermedia/network/ApiErrorParser;Lcom/intermedia/user/session/SessionManager;Lcom/intermedia/user/session/LogoutManager;)Lcom/intermedia/user/session/AccessTokenRefresher;
    .locals 1

    .line 64
    new-instance v0, Lcom/intermedia/user/session/AccessTokenRefresher;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/intermedia/user/session/AccessTokenRefresher;-><init>(Lcom/intermedia/network/LoggedOutApiService;Lcom/intermedia/network/ApiErrorParser;Lcom/intermedia/user/session/SessionManager;Lcom/intermedia/user/session/LogoutManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/intermedia/user/session/AccessTokenRefresher;
    .locals 5

    .line 39
    new-instance v0, Lcom/intermedia/user/session/AccessTokenRefresher;

    iget-object v1, p0, Lcom/intermedia/user/session/AccessTokenRefresher_Factory;->apiProvider:Ljavax/inject/Provider;

    .line 40
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intermedia/network/LoggedOutApiService;

    iget-object v2, p0, Lcom/intermedia/user/session/AccessTokenRefresher_Factory;->apiErrorParserProvider:Ljavax/inject/Provider;

    .line 41
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intermedia/network/ApiErrorParser;

    iget-object v3, p0, Lcom/intermedia/user/session/AccessTokenRefresher_Factory;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 42
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/intermedia/user/session/SessionManager;

    iget-object v4, p0, Lcom/intermedia/user/session/AccessTokenRefresher_Factory;->logoutManagerProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/intermedia/user/session/LogoutManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/intermedia/user/session/AccessTokenRefresher;-><init>(Lcom/intermedia/network/LoggedOutApiService;Lcom/intermedia/network/ApiErrorParser;Lcom/intermedia/user/session/SessionManager;Lcom/intermedia/user/session/LogoutManager;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/intermedia/user/session/AccessTokenRefresher_Factory;->get()Lcom/intermedia/user/session/AccessTokenRefresher;

    move-result-object v0

    return-object v0
.end method
