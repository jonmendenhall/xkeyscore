.class public final Lcom/google/android/gms/internal/zzw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final zzbh:Lcom/google/android/gms/internal/zzc;

.field public final zzbi:Lcom/google/android/gms/internal/zzad;

.field public zzbj:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzad;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzw;->zzbj:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzw;->result:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzbh:Lcom/google/android/gms/internal/zzc;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzw;->zzbi:Lcom/google/android/gms/internal/zzad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/zzc;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzw;->zzbj:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzw;->result:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzw;->zzbh:Lcom/google/android/gms/internal/zzc;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzw;->zzbi:Lcom/google/android/gms/internal/zzad;

    return-void
.end method

.method public static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzc;)Lcom/google/android/gms/internal/zzw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/zzc;",
            ")",
            "Lcom/google/android/gms/internal/zzw<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzw;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzc;)V

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/zzad;)Lcom/google/android/gms/internal/zzw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzad;",
            ")",
            "Lcom/google/android/gms/internal/zzw<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzw;-><init>(Lcom/google/android/gms/internal/zzad;)V

    return-object v0
.end method
