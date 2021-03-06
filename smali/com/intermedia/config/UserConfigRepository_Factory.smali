.class public final Lcom/intermedia/config/UserConfigRepository_Factory;
.super Ljava/lang/Object;
.source "UserConfigRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/config/UserConfigRepository;",
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

.field private final authedApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/AuthedApiService;",
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

.field private final sharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
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
            "Lcom/intermedia/network/AuthedApiService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ApiErrorParser;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/intermedia/config/UserConfigRepository_Factory;->authedApiServiceProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/intermedia/config/UserConfigRepository_Factory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p3, p0, Lcom/intermedia/config/UserConfigRepository_Factory;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lcom/intermedia/config/UserConfigRepository_Factory;->apiErrorParserProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/AuthedApiService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ApiErrorParser;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/config/UserConfigRepository;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/intermedia/config/UserConfigRepository_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/intermedia/config/UserConfigRepository_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newUserConfigRepository(Lcom/intermedia/network/AuthedApiService;Landroid/content/SharedPreferences;Lcom/intermedia/user/session/SessionManager;Lcom/intermedia/network/ApiErrorParser;)Lcom/intermedia/config/UserConfigRepository;
    .locals 1

    .line 69
    new-instance v0, Lcom/intermedia/config/UserConfigRepository;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/intermedia/config/UserConfigRepository;-><init>(Lcom/intermedia/network/AuthedApiService;Landroid/content/SharedPreferences;Lcom/intermedia/user/session/SessionManager;Lcom/intermedia/network/ApiErrorParser;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/intermedia/config/UserConfigRepository;
    .locals 5

    .line 41
    new-instance v0, Lcom/intermedia/config/UserConfigRepository;

    iget-object v1, p0, Lcom/intermedia/config/UserConfigRepository_Factory;->authedApiServiceProvider:Ljavax/inject/Provider;

    .line 42
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intermedia/network/AuthedApiService;

    iget-object v2, p0, Lcom/intermedia/config/UserConfigRepository_Factory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/intermedia/config/UserConfigRepository_Factory;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 44
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/intermedia/user/session/SessionManager;

    iget-object v4, p0, Lcom/intermedia/config/UserConfigRepository_Factory;->apiErrorParserProvider:Ljavax/inject/Provider;

    .line 45
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/intermedia/network/ApiErrorParser;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/intermedia/config/UserConfigRepository;-><init>(Lcom/intermedia/network/AuthedApiService;Landroid/content/SharedPreferences;Lcom/intermedia/user/session/SessionManager;Lcom/intermedia/network/ApiErrorParser;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/intermedia/config/UserConfigRepository_Factory;->get()Lcom/intermedia/config/UserConfigRepository;

    move-result-object v0

    return-object v0
.end method
