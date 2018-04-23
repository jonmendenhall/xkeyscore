.class public final Lcom/intermedia/user/UserRepository_Factory;
.super Ljava/lang/Object;
.source "UserRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/user/UserRepository;",
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

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/intermedia/user/UserRepository_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/intermedia/user/UserRepository_Factory;->sessionManagerProvider:Ljavax/inject/Provider;

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
            "Lcom/intermedia/user/session/SessionManager;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/user/UserRepository;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/intermedia/user/UserRepository_Factory;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/user/UserRepository_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/intermedia/user/UserRepository;
    .locals 3

    .line 28
    new-instance v0, Lcom/intermedia/user/UserRepository;

    iget-object v1, p0, Lcom/intermedia/user/UserRepository_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/intermedia/user/UserRepository_Factory;->sessionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intermedia/user/session/SessionManager;

    invoke-direct {v0, v1, v2}, Lcom/intermedia/user/UserRepository;-><init>(Landroid/content/Context;Lcom/intermedia/user/session/SessionManager;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/intermedia/user/UserRepository_Factory;->get()Lcom/intermedia/user/UserRepository;

    move-result-object v0

    return-object v0
.end method
