.class public final Lcom/intermedia/config/LoggedOutConfigRepository_Factory;
.super Ljava/lang/Object;
.source "LoggedOutConfigRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/config/LoggedOutConfigRepository;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final gsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
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

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/intermedia/config/LoggedOutConfigRepository_Factory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/intermedia/config/LoggedOutConfigRepository_Factory;->gsonProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/config/LoggedOutConfigRepository;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/intermedia/config/LoggedOutConfigRepository_Factory;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/config/LoggedOutConfigRepository_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newLoggedOutConfigRepository(Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)Lcom/intermedia/config/LoggedOutConfigRepository;
    .locals 1

    .line 41
    new-instance v0, Lcom/intermedia/config/LoggedOutConfigRepository;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/config/LoggedOutConfigRepository;-><init>(Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/intermedia/config/LoggedOutConfigRepository;
    .locals 3

    .line 28
    new-instance v0, Lcom/intermedia/config/LoggedOutConfigRepository;

    iget-object v1, p0, Lcom/intermedia/config/LoggedOutConfigRepository_Factory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/intermedia/config/LoggedOutConfigRepository_Factory;->gsonProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/Gson;

    invoke-direct {v0, v1, v2}, Lcom/intermedia/config/LoggedOutConfigRepository;-><init>(Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/intermedia/config/LoggedOutConfigRepository_Factory;->get()Lcom/intermedia/config/LoggedOutConfigRepository;

    move-result-object v0

    return-object v0
.end method
