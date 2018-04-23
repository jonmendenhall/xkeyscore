.class final Lcom/google/android/gms/internal/zzcjc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjgn:Lcom/google/android/gms/internal/zzcgi;

.field private synthetic zzjgo:Lcom/google/android/gms/internal/zzcir;

.field private synthetic zzjgs:Lcom/google/android/gms/internal/zzcha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcir;Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjc;->zzjgo:Lcom/google/android/gms/internal/zzcir;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcjc;->zzjgs:Lcom/google/android/gms/internal/zzcha;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcjc;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjc;->zzjgo:Lcom/google/android/gms/internal/zzcir;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcir;->zza(Lcom/google/android/gms/internal/zzcir;)Lcom/google/android/gms/internal/zzcim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzbal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjc;->zzjgo:Lcom/google/android/gms/internal/zzcir;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcir;->zza(Lcom/google/android/gms/internal/zzcir;)Lcom/google/android/gms/internal/zzcim;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjc;->zzjgs:Lcom/google/android/gms/internal/zzcha;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjc;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    return-void
.end method
