.class public final Lcom/intermedia/util/logging/WatchdogFileSupplier_Factory;
.super Ljava/lang/Object;
.source "WatchdogFileSupplier_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/util/logging/WatchdogFileSupplier;",
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

.field private final sharedPrefsProvider:Ljavax/inject/Provider;
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/intermedia/util/logging/WatchdogFileSupplier_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/intermedia/util/logging/WatchdogFileSupplier_Factory;->sharedPrefsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/util/logging/WatchdogFileSupplier;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/intermedia/util/logging/WatchdogFileSupplier_Factory;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/util/logging/WatchdogFileSupplier_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newWatchdogFileSupplier(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/intermedia/util/logging/WatchdogFileSupplier;
    .locals 1

    .line 39
    new-instance v0, Lcom/intermedia/util/logging/WatchdogFileSupplier;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/util/logging/WatchdogFileSupplier;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/intermedia/util/logging/WatchdogFileSupplier;
    .locals 3

    .line 28
    new-instance v0, Lcom/intermedia/util/logging/WatchdogFileSupplier;

    iget-object v1, p0, Lcom/intermedia/util/logging/WatchdogFileSupplier_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/intermedia/util/logging/WatchdogFileSupplier_Factory;->sharedPrefsProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, v2}, Lcom/intermedia/util/logging/WatchdogFileSupplier;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/intermedia/util/logging/WatchdogFileSupplier_Factory;->get()Lcom/intermedia/util/logging/WatchdogFileSupplier;

    move-result-object v0

    return-object v0
.end method
