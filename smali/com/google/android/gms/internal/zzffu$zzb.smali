.class public final Lcom/google/android/gms/internal/zzffu$zzb;
.super Lcom/google/android/gms/internal/zzfen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzffu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/zzffu<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/zzfen<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private zzpgu:Lcom/google/android/gms/internal/zzffu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzffu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfen;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzffu$zzb;->zzpgu:Lcom/google/android/gms/internal/zzffu;

    return-void
.end method


# virtual methods
.method public final synthetic zze(Lcom/google/android/gms/internal/zzffb;Lcom/google/android/gms/internal/zzffm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfge;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzffu$zzb;->zzpgu:Lcom/google/android/gms/internal/zzffu;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/zzffu;->zza(Lcom/google/android/gms/internal/zzffu;Lcom/google/android/gms/internal/zzffb;Lcom/google/android/gms/internal/zzffm;)Lcom/google/android/gms/internal/zzffu;

    move-result-object p1

    return-object p1
.end method
