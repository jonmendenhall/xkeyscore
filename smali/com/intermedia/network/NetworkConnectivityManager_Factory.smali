.class public final Lcom/intermedia/network/NetworkConnectivityManager_Factory;
.super Ljava/lang/Object;
.source "NetworkConnectivityManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/network/NetworkConnectivityManager;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final connectivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
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
            "Landroid/net/ConnectivityManager;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/intermedia/network/NetworkConnectivityManager_Factory;->connectivityManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/network/NetworkConnectivityManager;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/intermedia/network/NetworkConnectivityManager_Factory;

    invoke-direct {v0, p0}, Lcom/intermedia/network/NetworkConnectivityManager_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/intermedia/network/NetworkConnectivityManager;
    .locals 2

    .line 24
    new-instance v0, Lcom/intermedia/network/NetworkConnectivityManager;

    iget-object v1, p0, Lcom/intermedia/network/NetworkConnectivityManager_Factory;->connectivityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-direct {v0, v1}, Lcom/intermedia/network/NetworkConnectivityManager;-><init>(Landroid/net/ConnectivityManager;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/intermedia/network/NetworkConnectivityManager_Factory;->get()Lcom/intermedia/network/NetworkConnectivityManager;

    move-result-object v0

    return-object v0
.end method
