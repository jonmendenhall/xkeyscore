.class public abstract Lcom/google/android/gms/internal/zzfen;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/android/gms/internal/zzfhe;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzfhk<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final zzpfe:Lcom/google/android/gms/internal/zzffm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzffm;->zzcxb()Lcom/google/android/gms/internal/zzffm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzfen;->zzpfe:Lcom/google/android/gms/internal/zzffm;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Lcom/google/android/gms/internal/zzffb;Lcom/google/android/gms/internal/zzffm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfge;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzfen;->zze(Lcom/google/android/gms/internal/zzffb;Lcom/google/android/gms/internal/zzffm;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzfhe;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzfhe;->isInitialized()Z

    move-result p2

    if-nez p2, :cond_2

    instance-of p2, p1, Lcom/google/android/gms/internal/zzfek;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/zzfek;

    new-instance v0, Lcom/google/android/gms/internal/zzfim;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzfim;-><init>(Lcom/google/android/gms/internal/zzfhe;)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/google/android/gms/internal/zzfem;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/zzfem;

    new-instance v0, Lcom/google/android/gms/internal/zzfim;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzfim;-><init>(Lcom/google/android/gms/internal/zzfhe;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzfim;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzfim;-><init>(Lcom/google/android/gms/internal/zzfhe;)V

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfim;->zzczt()Lcom/google/android/gms/internal/zzfge;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzfge;->zzi(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfge;

    move-result-object p1

    throw p1

    :cond_2
    return-object p1
.end method
