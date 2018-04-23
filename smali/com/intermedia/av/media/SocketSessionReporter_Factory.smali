.class public final Lcom/intermedia/av/media/SocketSessionReporter_Factory;
.super Ljava/lang/Object;
.source "SocketSessionReporter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/av/media/SocketSessionReporter;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
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

.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/intermedia/av/media/SocketSessionReporter_Factory;->sessionManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/av/media/SocketSessionReporter;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/intermedia/av/media/SocketSessionReporter_Factory;

    invoke-direct {v0, p0}, Lcom/intermedia/av/media/SocketSessionReporter_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newSocketSessionReporter(Lcom/intermedia/user/session/SessionManager;)Lcom/intermedia/av/media/SocketSessionReporter;
    .locals 1

    .line 33
    new-instance v0, Lcom/intermedia/av/media/SocketSessionReporter;

    invoke-direct {v0, p0}, Lcom/intermedia/av/media/SocketSessionReporter;-><init>(Lcom/intermedia/user/session/SessionManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/intermedia/av/media/SocketSessionReporter;
    .locals 2

    .line 22
    new-instance v0, Lcom/intermedia/av/media/SocketSessionReporter;

    iget-object v1, p0, Lcom/intermedia/av/media/SocketSessionReporter_Factory;->sessionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intermedia/user/session/SessionManager;

    invoke-direct {v0, v1}, Lcom/intermedia/av/media/SocketSessionReporter;-><init>(Lcom/intermedia/user/session/SessionManager;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/intermedia/av/media/SocketSessionReporter_Factory;->get()Lcom/intermedia/av/media/SocketSessionReporter;

    move-result-object v0

    return-object v0
.end method
