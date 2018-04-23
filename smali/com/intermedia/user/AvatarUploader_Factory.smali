.class public final Lcom/intermedia/user/AvatarUploader_Factory;
.super Ljava/lang/Object;
.source "AvatarUploader_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/user/AvatarUploader;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final authedApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/AuthedApiService;",
            ">;"
        }
    .end annotation
.end field

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

.field private final sharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
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
            "Lcom/intermedia/network/AuthedApiService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/UserRepository;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/intermedia/user/AvatarUploader_Factory;->authedApiServiceProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/intermedia/user/AvatarUploader_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/intermedia/user/AvatarUploader_Factory;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/intermedia/user/AvatarUploader_Factory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lcom/intermedia/user/AvatarUploader_Factory;->userRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/AuthedApiService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/UserRepository;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/user/AvatarUploader;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v6, Lcom/intermedia/user/AvatarUploader_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/intermedia/user/AvatarUploader_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newAvatarUploader(Lcom/intermedia/network/AuthedApiService;Landroid/content/Context;Lcom/intermedia/user/session/SessionManager;Landroid/content/SharedPreferences;Lcom/intermedia/user/UserRepository;)Lcom/intermedia/user/AvatarUploader;
    .locals 7

    .line 78
    new-instance v6, Lcom/intermedia/user/AvatarUploader;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/intermedia/user/AvatarUploader;-><init>(Lcom/intermedia/network/AuthedApiService;Landroid/content/Context;Lcom/intermedia/user/session/SessionManager;Landroid/content/SharedPreferences;Lcom/intermedia/user/UserRepository;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/intermedia/user/AvatarUploader;
    .locals 7

    .line 46
    new-instance v6, Lcom/intermedia/user/AvatarUploader;

    iget-object v0, p0, Lcom/intermedia/user/AvatarUploader_Factory;->authedApiServiceProvider:Ljavax/inject/Provider;

    .line 47
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/intermedia/network/AuthedApiService;

    iget-object v0, p0, Lcom/intermedia/user/AvatarUploader_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 48
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/intermedia/user/AvatarUploader_Factory;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 49
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/intermedia/user/session/SessionManager;

    iget-object v0, p0, Lcom/intermedia/user/AvatarUploader_Factory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    .line 50
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/intermedia/user/AvatarUploader_Factory;->userRepositoryProvider:Ljavax/inject/Provider;

    .line 51
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/intermedia/user/UserRepository;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/intermedia/user/AvatarUploader;-><init>(Lcom/intermedia/network/AuthedApiService;Landroid/content/Context;Lcom/intermedia/user/session/SessionManager;Landroid/content/SharedPreferences;Lcom/intermedia/user/UserRepository;)V

    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/intermedia/user/AvatarUploader_Factory;->get()Lcom/intermedia/user/AvatarUploader;

    move-result-object v0

    return-object v0
.end method
