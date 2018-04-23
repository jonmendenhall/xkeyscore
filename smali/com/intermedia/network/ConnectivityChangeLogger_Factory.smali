.class public final Lcom/intermedia/network/ConnectivityChangeLogger_Factory;
.super Ljava/lang/Object;
.source "ConnectivityChangeLogger_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/network/ConnectivityChangeLogger;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final connectivityChangeLoggerMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/network/ConnectivityChangeLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final connectivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/NetworkConnectivityManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/network/ConnectivityChangeLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/NetworkConnectivityManager;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/intermedia/network/ConnectivityChangeLogger_Factory;->connectivityChangeLoggerMembersInjector:Ldagger/MembersInjector;

    .line 24
    iput-object p2, p0, Lcom/intermedia/network/ConnectivityChangeLogger_Factory;->connectivityManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/network/ConnectivityChangeLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/NetworkConnectivityManager;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/network/ConnectivityChangeLogger;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/intermedia/network/ConnectivityChangeLogger_Factory;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/network/ConnectivityChangeLogger_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/intermedia/network/ConnectivityChangeLogger;
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/intermedia/network/ConnectivityChangeLogger_Factory;->connectivityChangeLoggerMembersInjector:Ldagger/MembersInjector;

    new-instance v1, Lcom/intermedia/network/ConnectivityChangeLogger;

    iget-object v2, p0, Lcom/intermedia/network/ConnectivityChangeLogger_Factory;->connectivityManagerProvider:Ljavax/inject/Provider;

    .line 31
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intermedia/network/NetworkConnectivityManager;

    invoke-direct {v1, v2}, Lcom/intermedia/network/ConnectivityChangeLogger;-><init>(Lcom/intermedia/network/NetworkConnectivityManager;)V

    .line 29
    invoke-static {v0, v1}, Ldagger/internal/MembersInjectors;->injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/network/ConnectivityChangeLogger;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/intermedia/network/ConnectivityChangeLogger_Factory;->get()Lcom/intermedia/network/ConnectivityChangeLogger;

    move-result-object v0

    return-object v0
.end method
