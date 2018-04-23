.class public final Lcom/intermedia/game/ShowTimeRepository_Factory;
.super Ljava/lang/Object;
.source "ShowTimeRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/game/ShowTimeRepository;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
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

.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/intermedia/game/ShowTimeRepository_Factory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/game/ShowTimeRepository;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/intermedia/game/ShowTimeRepository_Factory;

    invoke-direct {v0, p0}, Lcom/intermedia/game/ShowTimeRepository_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/intermedia/game/ShowTimeRepository;
    .locals 2

    .line 22
    new-instance v0, Lcom/intermedia/game/ShowTimeRepository;

    iget-object v1, p0, Lcom/intermedia/game/ShowTimeRepository_Factory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-direct {v0, v1}, Lcom/intermedia/game/ShowTimeRepository;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/intermedia/game/ShowTimeRepository_Factory;->get()Lcom/intermedia/game/ShowTimeRepository;

    move-result-object v0

    return-object v0
.end method
