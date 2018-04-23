.class public final Lcom/intermedia/util/logging/DebugReporter_Factory;
.super Ljava/lang/Object;
.source "DebugReporter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/util/logging/DebugReporter;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final crashlyticsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/util/logging/CrashlyticsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final logcatLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/util/logging/LogcatLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final watchdogLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/util/logging/WatchdogLogger;",
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
            "Lcom/intermedia/util/logging/LogcatLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/util/logging/CrashlyticsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/util/logging/WatchdogLogger;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/intermedia/util/logging/DebugReporter_Factory;->logcatLoggerProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/intermedia/util/logging/DebugReporter_Factory;->crashlyticsLoggerProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/intermedia/util/logging/DebugReporter_Factory;->watchdogLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/util/logging/LogcatLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/util/logging/CrashlyticsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/util/logging/WatchdogLogger;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/util/logging/DebugReporter;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/intermedia/util/logging/DebugReporter_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/intermedia/util/logging/DebugReporter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newDebugReporter(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/intermedia/util/logging/DebugReporter;
    .locals 1

    .line 49
    new-instance v0, Lcom/intermedia/util/logging/DebugReporter;

    check-cast p0, Lcom/intermedia/util/logging/LogcatLogger;

    check-cast p1, Lcom/intermedia/util/logging/CrashlyticsLogger;

    check-cast p2, Lcom/intermedia/util/logging/WatchdogLogger;

    invoke-direct {v0, p0, p1, p2}, Lcom/intermedia/util/logging/DebugReporter;-><init>(Lcom/intermedia/util/logging/LogcatLogger;Lcom/intermedia/util/logging/CrashlyticsLogger;Lcom/intermedia/util/logging/WatchdogLogger;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/intermedia/util/logging/DebugReporter;
    .locals 4

    .line 32
    new-instance v0, Lcom/intermedia/util/logging/DebugReporter;

    iget-object v1, p0, Lcom/intermedia/util/logging/DebugReporter_Factory;->logcatLoggerProvider:Ljavax/inject/Provider;

    .line 33
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intermedia/util/logging/LogcatLogger;

    iget-object v2, p0, Lcom/intermedia/util/logging/DebugReporter_Factory;->crashlyticsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intermedia/util/logging/CrashlyticsLogger;

    iget-object v3, p0, Lcom/intermedia/util/logging/DebugReporter_Factory;->watchdogLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/intermedia/util/logging/WatchdogLogger;

    invoke-direct {v0, v1, v2, v3}, Lcom/intermedia/util/logging/DebugReporter;-><init>(Lcom/intermedia/util/logging/LogcatLogger;Lcom/intermedia/util/logging/CrashlyticsLogger;Lcom/intermedia/util/logging/WatchdogLogger;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/intermedia/util/logging/DebugReporter_Factory;->get()Lcom/intermedia/util/logging/DebugReporter;

    move-result-object v0

    return-object v0
.end method
