.class public final Lcom/intermedia/util/logging/WatchdogLogger_Factory;
.super Ljava/lang/Object;
.source "WatchdogLogger_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/util/logging/WatchdogLogger;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final fileSupplierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/util/logging/WatchdogFileSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private final trueTimeInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/initializers/TrueTimeInitializer;",
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
            "Lcom/intermedia/util/logging/WatchdogFileSupplier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/initializers/TrueTimeInitializer;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/intermedia/util/logging/WatchdogLogger_Factory;->fileSupplierProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/intermedia/util/logging/WatchdogLogger_Factory;->trueTimeInitializerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/util/logging/WatchdogFileSupplier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/initializers/TrueTimeInitializer;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/util/logging/WatchdogLogger;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/intermedia/util/logging/WatchdogLogger_Factory;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/util/logging/WatchdogLogger_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newWatchdogLogger(Lcom/intermedia/util/logging/WatchdogFileSupplier;Lcom/intermedia/initializers/TrueTimeInitializer;)Lcom/intermedia/util/logging/WatchdogLogger;
    .locals 1

    .line 40
    new-instance v0, Lcom/intermedia/util/logging/WatchdogLogger;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/util/logging/WatchdogLogger;-><init>(Lcom/intermedia/util/logging/WatchdogFileSupplier;Lcom/intermedia/initializers/TrueTimeInitializer;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/intermedia/util/logging/WatchdogLogger;
    .locals 3

    .line 28
    new-instance v0, Lcom/intermedia/util/logging/WatchdogLogger;

    iget-object v1, p0, Lcom/intermedia/util/logging/WatchdogLogger_Factory;->fileSupplierProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intermedia/util/logging/WatchdogFileSupplier;

    iget-object v2, p0, Lcom/intermedia/util/logging/WatchdogLogger_Factory;->trueTimeInitializerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intermedia/initializers/TrueTimeInitializer;

    invoke-direct {v0, v1, v2}, Lcom/intermedia/util/logging/WatchdogLogger;-><init>(Lcom/intermedia/util/logging/WatchdogFileSupplier;Lcom/intermedia/initializers/TrueTimeInitializer;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/intermedia/util/logging/WatchdogLogger_Factory;->get()Lcom/intermedia/util/logging/WatchdogLogger;

    move-result-object v0

    return-object v0
.end method
