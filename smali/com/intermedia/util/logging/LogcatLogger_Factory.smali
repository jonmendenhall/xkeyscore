.class public final Lcom/intermedia/util/logging/LogcatLogger_Factory;
.super Ljava/lang/Object;
.source "LogcatLogger_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/util/logging/LogcatLogger;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/intermedia/util/logging/LogcatLogger_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/intermedia/util/logging/LogcatLogger_Factory;

    invoke-direct {v0}, Lcom/intermedia/util/logging/LogcatLogger_Factory;-><init>()V

    sput-object v0, Lcom/intermedia/util/logging/LogcatLogger_Factory;->INSTANCE:Lcom/intermedia/util/logging/LogcatLogger_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/util/logging/LogcatLogger;",
            ">;"
        }
    .end annotation

    .line 19
    sget-object v0, Lcom/intermedia/util/logging/LogcatLogger_Factory;->INSTANCE:Lcom/intermedia/util/logging/LogcatLogger_Factory;

    return-object v0
.end method

.method public static newLogcatLogger()Lcom/intermedia/util/logging/LogcatLogger;
    .locals 1

    .line 24
    new-instance v0, Lcom/intermedia/util/logging/LogcatLogger;

    invoke-direct {v0}, Lcom/intermedia/util/logging/LogcatLogger;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/intermedia/util/logging/LogcatLogger;
    .locals 1

    .line 15
    new-instance v0, Lcom/intermedia/util/logging/LogcatLogger;

    invoke-direct {v0}, Lcom/intermedia/util/logging/LogcatLogger;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/intermedia/util/logging/LogcatLogger_Factory;->get()Lcom/intermedia/util/logging/LogcatLogger;

    move-result-object v0

    return-object v0
.end method
