.class final Lcom/google/android/gms/internal/zzeel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzece;


# instance fields
.field private synthetic zzmrv:Lcom/google/android/gms/internal/zzedk;

.field private synthetic zzmti:Lcom/google/android/gms/internal/zzedn;

.field private synthetic zzmtl:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

.field private synthetic zzmuf:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;JLcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeel;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeel;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzeel;->zzmuf:J

    iput-object p5, p0, Lcom/google/android/gms/internal/zzeel;->zzmtl:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzedn;->zzbf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeel;->zzmti:Lcom/google/android/gms/internal/zzedn;

    const-string v0, "setValue"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeel;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedn;Ljava/lang/String;Lcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/DatabaseError;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeel;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzeel;->zzmuf:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeel;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-static {p2, v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedn;JLcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/DatabaseError;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeel;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeel;->zzmtl:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeel;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p2, v0, p1, v1}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/zzedk;)V

    return-void
.end method
